#
# ~/.bash_profile
#

export PATH="$PATH:$HOME/.scripts:$HOME/.scripts/cf_submit:$HOME/.local/bin"
export CF_EDITOR=nvim # default competetive programming editor
export CF_DIRECTORY=~/desktop/programs/codeforces # CodeForces directory
export ATC_DIRECTORY=~/desktop/programs/atcoder # AtCoder directory
export TEMPLATE_DIR=~/desktop/misc/templates # path to the directory with templates
export CPP_TEMPLATE=$TEMPLATE_DIR/template.cpp # path to the C++ template file
export LATEX_TEMPLATE=$TEMPLATE_DIR/template.tex # path to the LaTeX template file
export EDITOR=nvim # default editor to use in scripts
export CXXFLAGS='-std=c++17 -Wall -Wextra -ggdb -D LOCAL' # additional flags for make and C++ files
export CFLAGS='-Wall -Wextra -ggdb' # additional flags for make and C files
export WALLPAPER=~/desktop/misc/photos/wallpaper.jpg

# custom variables
export HISTSIZE=2000
export STUD=~/desktop/programs/studies

setxkbmap pl # polskie znaki
setxkbmap -option caps:escape # map caps lock to espace
touchpad-toggle # automatically turn off touchpad at start
type pageupdown-disable && pageupdown-disable # disable PageUp, PageDown keys because they are annoying
feh --bg-max $WALLPAPER # set wallpaper

[[ -f ~/.bashrc ]] && . ~/.bashrc

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then # automatically "type" startx after login
  exec startx
fi
