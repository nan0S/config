#
# ~/.bash_profile
#

export PATH="$PATH:$HOME/.scripts"

setxkbmap pl ## polskie znaki
setxkbmap -option caps:escape ## map caps lock to espace
touchpad-toggle ## automatically turn off touchpad at start

[[ -f ~/.bashrc ]] && . ~/.bashrc

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then # automatically "type" startx after login
  exec startx
fi

