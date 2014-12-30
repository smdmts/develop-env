bash '/tmp/jdk-8u25-linux-x64.rpm' do
  not_if "test -f /tmp/jdk-8u25-linux-x64.rpm"
  code <<-EOC
    curl -L -o /tmp/jdk-8u25-linux-x64.rpm \
      -H 'Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com; oraclelicense=accept-securebackup-cookie' \
      'http://download.oracle.com/otn-pub/java/jdk/8u25-b17/jdk-8u25-linux-x64.rpm'
  EOC
end

rpm_package 'jdk-8u25-linux-x64.rpm' do
  source '/tmp/jdk-8u25-linux-x64.rpm'
end

include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'
include_recipe 'rbenv-install-rubies::default'

include_recipe 'golang::default'

include_recipe 'scala::default'

include_recipe 'nodejs'
