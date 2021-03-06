##############################################
# SOURCE OTHER CONFIG FILES
##############################################
source "/Users/jordanholmes/dotfiles/.prompt"

##############################################
# PATH
##############################################
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

mysql_bin="/usr/local/opt/mysql@5.7/bin"
python_bin="/Users/jordanholmes/Library/Python/2.7/bin"
shell_scripts="~/shell-scripts"
export PATH="$PATH:$shell_scripts:$mysql_bin:$python_bin"

####### Colorize ls output  ########
alias ls='ls -G'
alias gitf='git log --name-only'
# alias grade-log='git log -p ":(exclude,top)*package-lock.json"'
alias grade-log='git log -p ":(exclude,top)*package-lock.json" ":(exclude,top)*bundle.js"'
alias filechanges='git diff --name-status master..HEAD | egrep -v "vscode|README|package|closing_comments"'

####### Suppress zsh verbose message in macOS Catalina ########
export BASH_SILENCE_DEPRECATION_WARNING=1
