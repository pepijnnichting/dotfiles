#!/bin/bash

# install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew update

# install browsers
brew cask install google-chrome
brew cask install firefox
brew cask install microsoft-edge

# install communication tools
brew cask install slack
brew cask install microsoft-teams
brew cask install zoom
brew cask install skype

# install cloud tools
brew cask install dropbox
brew cask install google-backup-and-sync
brew cask install boxcryptor

# install further tools
brew cask install 1password
brew cask install toggl
brew cask install anydesk
brew cask install pgadmin4
brew cask install postman
brew cask install ngrok
brew cask install the-unarchiver
brew cask install sublime-text
brew cask install stats
brew cask install keycastr
brew cask install krisp
brew cask install vagrant
brew cask install virtualbox

brew cask install spectacle
# brew cask install rectangle


# install developer related tools
brew cask install intellij-idea
brew cask install postgres
brew cask install docker
brew cask install chromedriver

# install Java
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8
brew cask install adoptopenjdk11
brew cask install adoptopenjdk14

# install jenv - alternatively use JDKMAN
brew install jenv
pause
# follow install instructions: https://www.jenv.be/
# For example, for installing it for ZSH:
# echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.zshrc
# echo 'eval "$(jenv init -)"' >> ~/.zshrc
#
# Then, add all JDKs:
# jenv add <jdk-install-path>
jenv enable-plugin maven
jenv enable-plugin export

# install various CLI tools
brew install maven
brew install git
brew install node
brew install yarn

# install cloud development tools
brew tap aws/tap
brew install awscli
brew install aws-cdk
brew install aws-sam-cli
brew install serverless

# install other cmd tools
brew install httpie
brew install tldr
brew install mkcert
brew install jq
brew install mitmproxy


# manual steps
echo "Install Monosnap (https://monosnap.com/) manually from the App Store"
echo "Install USGerman Keyboard Layout: https://hci.rwth-aachen.de/usgermankeyboard"
echo "Make sure you have a strong password to protect your Mac's user account."
echo "Adjust Mac's security settings: enable FileVault and require password instantly."
echo "Make sure to create an SSH key pair and restrict access to .ssh using chmod 700 ~/.ssh"
