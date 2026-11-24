# Path to your dotfiles.
export DOTFILES=$HOME/.dotfiles

export PATH="/usr/local/sbin:$PATH"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/opt/homebrew/opt/php@8.6/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.6/sbin:$PATH"
export PATH="/opt/homebrew/opt/node@26/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

PATH=~/.console-ninja/.bin:$PATH
# Vite+ bin (https://viteplus.dev)
. "/Users/pepijn/.config/vite-plus/env"
