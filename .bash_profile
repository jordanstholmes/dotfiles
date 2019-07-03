####### Configure command line prompt ########
# function to grab the current branch if in a git repo

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Configure command-line prompt
newline="\n"

# \[\e[ = start format info
# format will extend from then until it hits a clear >> [\e[00m\] 
# 1;38;5 >> the '1' is for bold, the '38;5' says the upcoming color code is for foreground
# the 33 is the color code from the 256 color set
# m\] = end the format info
blue="\[\e[1;38;5;33m\]"
clear_format="\[\e[00m\]"
working_dir="\w"
gray="\[\e[1;38;5;239m\]"
red="\[\e[1;38;5;196m\]"
export PS1="$newline$blue$working_dir$clear_format$gray$(parse_git_branch)$clear_format$newline${red}❯$clear_format "

####### Add alias for keyboard shortcut scripts #######  
alias kb="~/.shell-scripts/keyboard-shortcuts.sh"
alias kbo="~/.shell-scripts/show-shortcuts.sh"

####### Add to PATH ####### 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/Users/jordanholmes/Library/Python/2.7/bin:$PATH"

####### Colorize ls output  ########
alias ls='ls -G'
