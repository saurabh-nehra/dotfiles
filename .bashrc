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
export PATH="$HOME/.local/bin:$PATH:$HOME/bin"
eval "$(starship init bash)"
eval "$(zoxide init bash)"
alias eos_update="eos-update --faillock-check --aur"
alias ls="eza --long --group-directories-first --binary --no-permissions --octal-permissions --icons"
alias cd="z"
alias cdi="zi"
alias find="fd"
alias dust="du"
alias config='/usr/bin/git --git-dir=/home/saurabh/.cfg/ --work-tree=/home/saurabh'
alias bats='BATS_RUN_SKIPPED=true command bats *.bats'
alias rm='rip -i'
alias playground='distrobox-enter arch-test -nw'
export ANDROID_HOME=$HOME/Android
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools

# Only in foot terminal
if [ "$TERM" = "foot" ] && command -v tmux &>/dev/null; then
  if [ -z "$TMUX" ]; then
    tmux attach -t main || tmux new -s main
  fi

  # Ensure tmux detaches cleanly when terminal is closed
  if [ -n "$TMUX" ]; then
    trap 'tmux detach' EXIT
  fi
fi
