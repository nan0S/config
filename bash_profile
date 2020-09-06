#
# ~/.bash_profile
#

export PATH="$PATH:$HOME/.scripts:$HOME/.scripts/cf_submit"
export EDITOR=nvim # default editor
export CF_EDITOR=nvim ## default competetive programming editor
export CF_DIRECTORY=~/Desktop/Programs/codeforces ## CodeForces directory
export ATC_DIRECTORY=~/Desktop/Programs/atcoder/beginnercontest ## AtCoder directory
export TEMPLATE=~/Desktop/Miscellaneous/tem.cpp ## .cpp template filepath

setxkbmap pl ## polskie znaki
setxkbmap -option caps:escape ## map caps lock to espace
# touchpad-toggle ## automatically turn off touchpad at start

[[ -f ~/.bashrc ]] && . ~/.bashrc

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then # automatically "type" startx after login
  exec startx
fi

