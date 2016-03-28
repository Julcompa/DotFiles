export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export CLICOLOR=TRUE
export TERM=xterm-256color
export EDITOR=vim

### Powerline
. /Library/powerline/powerline/bindings/bash/powerline.sh
POWERLINE_COMMAND="$POWERLINE_COMMAND -c ext.shell.theme=default_leftonly"

### Alias
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias podinv="pod install --no-repo-update --verbose"
alias splith="tmux split -h"
alias attach="tmux attach -t"
alias c="clear"

### gitignore.io
function gitignore() { curl -L -s https://www.gitignore.io/api/$@ ;}

### Cocoapods
function spec_toJson() { pod ipc spec $@ > $@.json ;}

