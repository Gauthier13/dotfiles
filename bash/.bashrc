#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza -a -l'
alias ..='z ..'
alias nv='nvim'
alias sn='shutdown now'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# zoxide
eval "$(zoxide init bash)"
 
# startship
eval "$(starship init bash)"
. "$HOME/.cargo/env"
