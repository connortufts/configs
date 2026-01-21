#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -Fh'
alias ll='ls -l'
alias la='ls -A'
alias lla='ls -lA'
alias notes='xournalpp'
alias grep='grep --color=auto'
alias diff='diff --strip-trailing-cr'

viewcsv() {
    if [[ $# -ge 2 ]] ; then
        column -s ${1} -t ${2}  | less -S
    else
        echo 'need separator and file'
    fi
}

shopt -s globstar
shopt -s extglob
shopt -s checkwinsize
shopt -s histappend
HISTFILESIZE=10000

rgb() { printf "\[\033[38;2;%s;%s;%sm\]" $((0x${1})) $((0x${2})) $((0x${3})); }

# custom cli colors
COLOR_VIOLET=$(rgb ae 27 fe)
COLOR_RESET="\[\033[0m\]"

unset -f rgb

PS1="${COLOR_VIOLET}[\u@\h \W]\$${COLOR_RESET} "

export EDITOR=vim
