#
# ~/.bashrc
#

# Disable ctrs-s and ctrl-q stopping terminal
stty -ixon
# Allows you to cd into directory merely by typing the directory name
shopt -s autocd

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# turn on autocomplete in bash
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# source Git special functions
[ -e /usr/share/git/completion/git-prompt.sh ] && . /usr/share/git/completion/git-prompt.sh
# terminal prompt with Git support (show current branch)
PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[34m\]\h\[\e[36m\]\$(__git_ps1 '(%s)')\[\e[35m\] \W\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "

# Add colors
alias sudo='sudo '
alias pacman='pacman --color=auto'
alias egrep='egrep --color=auto'
alias yay='yay --color=auto'
alias ls='ls -hvN --color=auto --group-directories-first'
alias grep="grep --color=auto" # Highlight desired matches
alias igrep="grep -i"

alias ll='ls --color=always -lAFbhv | less -XER' # exact ls with pager

alias con=". con" # custom script in which I want to change directory so have to run with . (same shell)
alias bashrc='nvim ~/.bashrc && source ~/.bashrc'
alias vimrc='nvim ~/.vimrc'

# replace programs with shortcuts
alias vim="nvim -c 'set scroll=10'"
alias nvim="nvim -c 'set scroll=10'"
alias jupyter="run 'jupyter notebook --browser=chromium'"

# useful aliases for custom folders
alias misc='cd ~/desktop/misc'
alias suck="cd ~/desktop/misc/suckless"
alias codeforces='cd ~/desktop/programs/codeforces'
alias atcoder='cd ~/desktop/programs/atcoder'
alias stud='cd $STUD'

alias aisd='cd $STUD/aisd'
alias mp='cd $STUD/mp'

alias analn='cd $STUD/analn'
alias mia='cd $STUD/mia'
alias pgk='cd $STUD/pgk'
alias weppo='cd $STUD/weppo'

alias ask='cd $STUD/ask'
alias krypto='cd $STUD/krypto'
alias linux='cd $STUD/linux'
alias ppb='cd $STUD/ppb'
alias si='cd $STUD/si'
alias sieci='cd $STUD/sieci'

alias ml='cd $STUD/ml'
alias so='cd $STUD/so'
alias ai='cd $STUD/ai4g'
alias ae='cd $STUD/ae'
alias c++='cd $STUD/c++stl/tests'
alias cpptricks='cd $STUD/cpptricks'

alias dl='cd $STUD/dl'
alias poo='cd $STUD/poo'
alias bazy='cd $STUD/bazy'
alias jfizo='cd $STUD/jfizo'
alias poo='cd $STUD/poo'

alias bachelor='cd $STUD/bachelor'

alias tutorials='cd ~/desktop/programs/tutorials'
alias train='cd ~/desktop/programs/contests/misc'
alias job='cd ~/desktop/misc/job'
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# xdg-open is uncomfortable to type
alias open='xdg-open'

# PS1='[\u@\h \W]\$ '
# PS1="\e[31m[\e[33m\u\e[32m@\e[34m\h\e[35m \W\e[31m]\e[m\$ "
# PS1="\e[31m[\e[33m\u\e[32m@\e[34m\h\e[36m\$(__git_ps1 '(%s)') \e[35m\W\e[31m\e[31m]\e[m\$ "
# PS1="\[\e[31m\][\e[33m\u\e[32m@\e[34m\h\e[36m\$(__git_ps1 '(%s)') \e[35m\W\e[31m\e[31m]\e[m\$ "
# PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[34m\]\h\[\e[m\]\[\e[35m\] \W\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "
