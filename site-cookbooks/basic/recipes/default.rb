include_recipe "git::source"
include_recipe "zsh"
include_recipe "vim"
include_recipe "docker"

bash "Set vagrant's shell to zsh" do
    code <<-EOT
    chsh -s /bin/zsh vagrant
    EOT
    not_if 'test "/bin/zsh" = "$(grep vagrant /etc/passwd | cut -d: -f7)"'
end

execute "devtools" do
  user "root"
  command 'yum -y groupinstall "Development Tools"'
  action :run
end

execute "usualtools" do
  user "root"
  command <<-EOH
    yum -y install wget
    yum -y install telnet
  EOH
  action :run
end

execute "Japanese Support" do
  user "root"
  command <<-EOH
    yum -y groupinstall "Japanese Support"
    localedef -f UTF-8 -i ja_JP ja_JP.utf8
    sed -i 's/^/#/g' /etc/sysconfig/i18n
    echo 'LANG="ja_JP.utf8"' >> /etc/sysconfig/i18n
  EOH
end

