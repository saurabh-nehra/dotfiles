#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
alias grep='grep --color=auto'
export EDITOR=nvim
PS1='[\u@\h \W]\$ '
export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/init-nvm.sh
export PATH="$HOME/.local/bin:$PATH"
eval "$(oh-my-posh init bash --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/space.omp.json')"
eval "$(zoxide init bash)"
alias eos_update="eos-update --faillock-check --aur"
alias ls="eza --long --group-directories-first --binary --no-permissions --octal-permissions --icons"
alias cd="z"
alias cdi="zi"
alias find="fd"
alias dust="du"
