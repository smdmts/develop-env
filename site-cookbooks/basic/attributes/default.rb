# attribute
# git
default['git']['version'] = '2.2.1'
default['git']['url']     = 'https://www.kernel.org/pub/software/scm/git/git-2.2.1.tar.gz'

default['vim']['install_method'] = 'source'
default['vim']['source']['version'] = '7.4'
default['vim']['source']['checksum'] = 'd0f5a6d2c439f02d97fa21bd9121f4c5abb1f6cd8b5a79d3ca82867495734ade'

if platform_family? "rhel"
  default['vim']['source']['dependencies']  = %w{ python-devel ncurses ncurses-devel ruby ruby-devel perl-devel ctags gcc make }
else
  default['vim']['source']['dependencies']  = %w{ python-dev libncurses5-dev ruby ruby-dev libperl-dev exuberant-ctags gettext tcl-dev lua5.2 liblua5.2-dev gcc make }
end
