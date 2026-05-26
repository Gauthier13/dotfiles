#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='eza -a -l'
alias ..='z ..'
alias nv='nvim'
alias grep='grep --color=auto'
alias hx='helix'
alias ff='fx'
alias gg='lazygit'
PS1='[\u@\h \W]\$ '

export EDITOR=helix
export TERMINAL=alacritty

# zoxide
eval "$(zoxide init bash)"
 
# startship
eval "$(starship init bash)"
. "$HOME/.cargo/env"

export PATH="$HOME/.local/bin:$PATH"

# felix tui
source <(command felix --init)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
