#
# ~/.bashrc
#

## If not running interactively, don't do anything
stty -ixon ## Disable ctrs-s and ctrl-q stopping terminal
shopt -s autocd ## Allows you to cd into directory merely by typing the directory name

[[ $- != *i* ]] && return

## Adding colors
alias sudo='sudo '
alias pacman='pacman --color=auto'

alias egrep='egrep --color=auto'
alias yay='yay --color=auto'
alias ls='ls -hvN --color=auto --group-directories-first'
alias grep="grep --color=auto" ## Highlight desired matches

alias ll='ls --color=always -lAFbhv | less -XER' ## exact ls with pager
alias gentmp='date +"tmp-%Y%m%d%H%M%S"' ## date in format tmp-YYYYMMDDHHMMSS
alias genpwd='head /dev/urandom | tr -dc 3-9A-HJ-NP-Z | head -c 32; echo '''

alias con=". con" ## custom script in which I want to change directory so have to run with . (same shell)
alias rc='nvim ~/.bashrc && source ~/.bashrc'
alias vrc='nvim ~/.vimrc'

# replace vi and vim with neovim
alias vi="nvim -c 'set scroll=10'"
alias vim="nvim -c 'set scroll=10'"
alias nvim="nvim -c 'set scroll=10'"

# useful aliases for custom folders
alias suck="~/Desktop/Miscellaneous/suckless"
alias codeforces='~/Desktop/Programs/codeforces'
alias atcoder='~/Desktop/Programs/atcoder'
alias stud='~/Desktop/Programs/studia'
alias linux='~/Desktop/Programs/studia/linux/pracownia'
alias ask='~/Desktop/Programs/studia/ask/pracownia'
alias sieci='~/Desktop/Programs/studia/sieci/pracownia'
alias si='~/Desktop/Programs/studia/si/pracownia'
alias ppb='~/Desktop/Programs/studia/ppb/materialy'
alias krypto='~/Desktop/Programs/studia/krypto/materialy'
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

## PS1='[\u@\h \W]\$ '
#PS1="\e[31m[\e[33m\u\e[32m@\e[34m\h\e[35m \W\e[31m]\e[m\$ "
#PS1="\e[31m[\e[33m\u\e[32m@\e[34m\h\e[36m\$(__git_ps1 '(%s)') \e[35m\W\e[31m\e[31m]\e[m\$ "
# PS1="\[\e[31m\][\e[33m\u\e[32m@\e[34m\h\e[36m\$(__git_ps1 '(%s)') \e[35m\W\e[31m\e[31m]\e[m\$ "
#PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[34m\]\h\[\e[m\]\[\e[35m\] \W\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "

# source Git special functions
[ -e /usr/share/git/completion/git-prompt.sh ] && . /usr/share/git/completion/git-prompt.sh
# terminal prompt with Git support (show current branch)
PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[34m\]\h\[\e[36m\]\$(__git_ps1 '(%s)')\[\e[35m\] \W\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "

complete -cf sudo man ## autocomplete after sudo, man

# variables
HISTSIZE=2000
STUD=~/Desktop/Programs/studia
