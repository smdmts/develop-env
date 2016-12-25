set fish_plugins theme git rbenv rails brew bundler gem osx pbcopy better-alias gi peco z tmux
set -x PATH /usr/local/bin /usr/local/sbin $PATH

# pyenv
set -x PATH $HOME/.pyenv/bin $PATH
set -x PATH $HOME/.pyenv/shims $PATH
pyenv rehash >/dev/null ^&1

function fish_user_key_bindings
  bind \cr peco_select_history # Bind for prco history to Ctrl+r
end
