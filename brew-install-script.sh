#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh`


if [[ $(command -v brew) == "" ]]; then
  echo "Installing brew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Updating Homebrew"
    brew update
fi

echo "Installing brew cask..."
brew tap homebrew/cask

# browsers
echo "Installing browsers..."
brew install --cask google-chrome
brew install --cask firefox
brew install --cask microsoft-edge

# communication tools
echo "Installing communication apps..."
brew install --cask slack
brew install --cask discord
brew install --cask microsoft-teams
brew install --cask microsoft-outlook

# basic apps
echo "Installing basic apps..."
brew install --cask dropbox
brew install --cask 1password
brew install --cask nordvpn
brew install --cask tunnelblick
brew install --cask the-unarchiver
brew install --cask plex
brew install --cask stats
brew install --cask cakebrew
brew install --cask copyclip
brew install --cask spotify
brew install --cask transmission
brew install --cask vlc
brew install --cask whatsapp
brew install --cask switch
brew install --cask steam

# Dev Tools
echo "Installing development tools..."
brew install --cask ngrok
brew install --cask phpstorm
brew install --cask postman
brew install --cask visual-studio-code
brew install --cask warp
brew install --cask docker
brew install --cask chromedriver
brew install --cask poedit
brew install --cask transmit
brew install --cask sourcetree
brew install --cask sketch
brew install --cask imageoptim
brew install --cask gas-mask


#  CLI tools
echo "Installing CLI tools..."
brew install git
brew install node
brew install yarn
brew install azure-cli
brew install azcopy
brew install helm
brew install mkcert
brew install ncdu
brew install starship
brew install thefuck
brew install tidy-html5
brew install python@3.10


# manual steps
echo "Install Bettersnaptool (https://folivora.ai/bettersnaptool/) manually from the App Store"
