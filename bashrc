#     __               __
#    / /_  ____ ______/ /_  __________
#   / __ \/ __ `/ ___/ __ \/ ___/ ___/
#  / /_/ / /_/ (__  ) / / / /  / /__
# /_.___/\__,_/____/_/ /_/_/   \___/
#
          
[[ $- != *i* ]] && return

shopt -s autocd # cd without dir name

stty -ixon # Disable ctrl-s and crtl-q
HISTSIZE=99999
HISTFILESIZE=99999 # Infinite history
HISTFILE="$HOME/.cache/bash_history"

# export PS1='\n\[$(tput bold)\]\[$(tput setaf 1)\][\A] \[$(tput setaf 2)\]\w \[$(tput setaf 14)\]\$ \[$(tput sgr0)\]\[$(tput setaf 6)\]󰶻 \[$(tput sgr0)\] '


if [ -f /usr/local/bin/synth-shell-prompt.sh ] && [ -n "$( echo $- | grep i )" ]; then
	source /usr/local/bin/synth-shell-prompt.sh
fi

~/.config/iamchad/scripts/fetch

#custom alias

alias ls="ls -F --color=auto"
alias ll="ls -AlFh --color=auto"
alias p="sudo pacman"
alias v="vim"
alias sv="sudo vim"
alias yt="youtube-dl --add-metadata -ic" #downloads youtube video
alias yta="youtube-dl --add-metadata -xic" #downloads youtube video as audio
alias s="sxiv -a" #opens sxiv image viewer
alias S="sxiv * -a" #opens whoel folder with sxiv
alias gohan="sudo make clean install"
alias reload="~/.customsh/autoentr/web-reload.sh"
alias r="ranger"
alias sr="sudo ranger"
# alias xterm="LANG=en_US.UTF-8 xterm"
alias grep="grep --color=auto"
alias ka="killall"
alias chad="cd ~/.config/iamchad"
alias c="calcurse"
alias taskk="task -anime"
alias anime="task +anime"
