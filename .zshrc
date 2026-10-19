# Enable Powerlevel10k instant prompt (keep near top of ~/.zshrc)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Lock the history file to prevent corruption from concurrent shells
setopt HIST_FCNTL_LOCK

alias Yc="sudo rm -rf /var/cache/pacman/pkg/download-*"
alias ls="lsd"
alias ll="ls -la"
alias vim="zeditor"
alias fetch="fetch --infinite"
alias cat="bat"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
eval "$(zoxide init zsh)"
