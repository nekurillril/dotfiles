#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -a'
alias grep='grep --color=auto'
alias neofetch='neofetch --ascii ~/.config/neofetch/amine.txt'
PS1='[\u@\h \W]\$ '
neofetch
