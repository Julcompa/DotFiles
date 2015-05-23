export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

. /Library/powerline/powerline/bindings/bash/powerline.sh
POWERLINE_COMMAND="$POWERLINE_COMMAND -c ext.shell.theme=default_leftonly"

[[ -s $HOME/.hosts/scripts/hosts_command ]] && source $HOME/.hosts/scripts/hosts_command

export CLICOLOR=TRUE
export TERM=xterm-256color
export EDITOR=vim

alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias gc="git add -A; git commit"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

