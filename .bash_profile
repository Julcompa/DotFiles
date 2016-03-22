export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

. /Library/powerline/powerline/bindings/bash/powerline.sh
POWERLINE_COMMAND="$POWERLINE_COMMAND -c ext.shell.theme=default_leftonly"

[[ -s $HOME/.hosts/scripts/hosts_command ]] && source $HOME/.hosts/scripts/hosts_command

export CLICOLOR=TRUE
export TERM=xterm-256color
export EDITOR=vim

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Alias
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias splith="tmux split -h"
alias attach="tmux attach -t"
alias c="clear"

alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

### Node Version Manager
export NVM_DIR="/Users/eyeplum/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

### gitignore.io
function gitignore() { curl -L -s https://www.gitignore.io/api/$@ ;}

