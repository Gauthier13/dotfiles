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
alias hx='helix'
PS1='[\u@\h \W]\$ '

# zoxide
eval "$(zoxide init bash)"
 
# startship
eval "$(starship init bash)"
. "$HOME/.cargo/env"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
