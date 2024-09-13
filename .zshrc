# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

export PATH="/usr/local/sbin:$PATH"
eval "$(starship init zsh)"
eval "$(thefuck --alias)"
eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/opt/homebrew/opt/php@8.3/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.3/sbin:$PATH"

export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
