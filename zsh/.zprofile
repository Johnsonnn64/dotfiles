#
# zprofile
#

export EDITOR="nvim"
export PATH="$PATH:$HOME/.local/bin"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"
export GOPATH="${XDG_DATA_HOME:-$HOME/.local/share}/go"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export npm_config_prefix=$HOME/.local/
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export SSB_HOME="$XDG_DATA_HOME"/zoom
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export $(dbus-launch)
export GPG_TTY=$(tty)
export LESSHISTFILE="-"
[ -f ~/.cache/lf/icons ] && source ~/.cache/lf/icons

# startx auto
if [ "$(tty)" = "/dev/tty1" ]; then
  pgrep -x dwm || exec startx ~/.config/x11/xinitrc
fi
