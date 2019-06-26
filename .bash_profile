# Configure command line prompt
export PS1="\[\e[1;38;5;33m\]\w\[\e[00m\]\n\[\e[1;38;5;196m\]❯\[\e[00m\] "

alias kb="~/.shell-scripts/keyboard-shortcuts.sh"
alias kbo="~/.shell-scripts/show-shortcuts.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/Users/jordanholmes/Library/Python/2.7/bin:$PATH"
