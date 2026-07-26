#
# ~/.bashrc
#

[[ $- != *i* ]] && return

alias ls='eza --icons'
alias ll='eza -la --icons'
alias cat='bat --style=plain'
PS1='[\u@auraos \W]\$ '
