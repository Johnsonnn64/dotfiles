# Created by newuser for 5.8.1
#
# zshrc
#

stty -ixon # disable ctrl-s ctrl-q
HIST_STAMPS="yyyy/mm/dd"
HISTFILE="$HOME/.cache/zsh_history"
HISTSIZE=99999
SAVEHIST=99999
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt AUTOCD
setopt PROMPT_SUBST
ZPLUGINS=/home/john/.config/zsh/zplugins

# git status
autoload -U colors && colors
eval "$(starship init zsh)"
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}%(!.#.$) "

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
# movement for tab complete
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# vi-mode
bindkey -v
export KEYTIMEOUT=1
# Change cursor shape for different vi modes.
function zle-keymap-select () {
  case $KEYMAP in
    vicmd) echo -ne '\e[1 q';;      # block
    viins|main) echo -ne '\e[5 q';; # beam
  esac
}
zle -N zle-keymap-select
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# lfcd
lfcd () {
  tmp="$(mktemp)"
  lf -command 'set dironly' -last-dir-path="$tmp" "$@"
  if [ -f "$tmp" ]; then
    dir="$(cat "$tmp")"
    rm -f "$tmp" >/dev/null
    [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
  fi
}
bindkey -s '^o' 'lfcd\n'

~/workspace/suckless/dwm/scripts/fetch
alias ls="ls -F --color --group-directories-first"
alias ll="ls -AlFh --color --group-directories-first"
alias p="sudo pacman"
alias s="nsxiv -a" #opens sxiv image viewer
alias S="nsxiv * -ta" #opens whole folder with sxiv
alias gohan="sudo make clean install"
alias r="ranger"
alias ka="killall"
alias lf="lfrun"
alias g="git"
alias bat="bat --theme base16"
alias reboot="sudo reboot"
alias poweroff="sudo poweroff"
alias hib="loginctl hibernate"
alias his="loginctl hybrid-sleep"
alias repicom="killall picom && sleep 0.1 && picom --experimental-backends -b"

# terminal timer/stopwatch
countdown() {
    start="$(( $(date '+%s') + $1))"
    while [ $start -ge $(date +%s) ]; do
        time="$(( $start - $(date +%s) ))"
        printf '%s\r' "$(date -u -d "@$time" +%H:%M:%S)"
        sleep 0.1
    done
}

stopwatch() {
    start=$(date +%s)
    while true; do
        time="$(( $(date +%s) - $start))"
        printf '%s\r' "$(date -u -d "@$time" +%H:%M:%S)"
        sleep 0.1
    done
}


# 'ls' after every 'cd'
if ! (( $chpwd_functions[(I)chpwd_cdls] )); then
  chpwd_functions+=(chpwd_cdls)
fi
function chpwd_cdls() {
  if [[ -o interactive ]]; then
    emulate -L zsh
    ls
  fi
}

# ---------- PLUGINS ----------
source $ZPLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZPLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh

# ---------- PLUGEND ----------
