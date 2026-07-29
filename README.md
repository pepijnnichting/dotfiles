# dotfiles

1. Clone repo into new hidden directory.

```zsh
# Use SSH (if set up)...
git clone git@github.com:pepijnnichting/dotfiles.git ~/.dotfiles

# ...or use HTTPS and switch remotes later.
git clone https://github.com/pepijnnichting/dotfiles.git ~/.dotfiles
```

2. run install script

```zsh
sh ~/.dotfiles/install-script.sh

# or run if you only want to install brews

brew bundle --file ~/.dotfiles/Brewfile

```

3. Git defaults beheren via dotfiles

```zsh
# Deze repo-bestanden worden globaal ingeladen:
~/.dotfiles/.gitconfig
```

Je kunt daar bijvoorbeeld `pull.rebase=true` beheren, net als je aliases.

4. Update Brewfile if you changed the brew setup

```zsh
brew bundle dump --force --file=Brewfile
git add Brewfile
git commit -m "Update Brewfile"
git push
```
