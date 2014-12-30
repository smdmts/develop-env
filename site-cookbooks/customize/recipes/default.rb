git "/home/vagrant/dotfiles" do
  user "vagrant"
  group "vagrant"
  repository "https://github.com/spc/dotfiles.git"
  action :sync
  notifies :run , 'execute[setup_zsh]'
end

execute "setup_zsh" do
  user "vagrant"
  group "vagrant"
  cwd "/home/vagrant/dotfiles"
  command <<-EOF
  sh setup.sh
  EOF
  action :nothing
end

