#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$PATH:$HOME/.local/bin"
export EDITOR="vim"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export SSB_HOME="$XDG_DATA_HOME"/zoom
export GPG_TTY=$(tty)
export LESSHISTFILE="-"


# startx if not running
if [ "$(tty)" = "/dev/tty1" ]; then 
  pgrep -x dwm || exec startx
fi


