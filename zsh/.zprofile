#
# zprofile
#

export PATH="$PATH:$HOME/.local/bin"
export EDITOR="nvim"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export SSB_HOME="$XDG_DATA_HOME"/zoom
export GPG_TTY=$(tty)
export LESSHISTFILE="-"
[ -f ~/.cache/lf/icons ] && source ~/.cache/lf/icons

# startx auto
if [ "$(tty)" = "/dev/tty1" ]; then
  pgrep -x dwm || exec startx ~/.config/x11/xinitrc
fi
