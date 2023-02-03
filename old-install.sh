# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install `mas`
brew install mas

# install Mac App Store apps
mas install 1333542190 `# 1Password (7)`
mas install 824171161 `#Affinity Designer (1.5.5)`
mas install 824183456 `#Affinity Photo (1.5.2)`
mas install 500154009 `#BitdefenderVirusScanner (3.8)`
mas install 975937182 `#Fantastical 2 (2.4.1)`
mas install 412448059 `#ForkLift (2.6.6)`
mas install 1084713122 `#Markoff (1.0.1)`
mas install 1295203466 `#Microsoft Remote Desktop (10.3.12)`
mas install 421879749 `#Rested (2.7)`
mas install 507257563 `#Sip (4.5.2)`
mas install 803453959 `#Slack (2.6.2)`
mas install 425424353 `#The Unarchiver (3.11.1)`
mas install 497799835 `#Xcode (8.3.3)`

# install `nvm`
touch ~/.profile
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

# install node, yarn etc
nvm install v16.18.1
brew install yarn
yarn global add prettier

# install desktop apps
brew tap caskroom/cask

brew cask install google-chrome
## to help install 1Password
mkdir -p ~/Library/Application\ Support/Google/Chrome

brew install jq
brew install httpie
brew install wget
brew install the_silver_searcher

# brew cask install alfred
brew cask install skype
brew cask install visual-studio-code
brew cask install firefox
brew cask install parallels
brew cask install basecamp
brew cask install sublime-text
brew cask install azure-data-studio
brew cask install dropbox
brew cask install spectacle
brew cask install libreoffice
brew cask install docker
brew cask install google-drive-file-stream
brew cask install vlc

brew install asimov
sudo brew services start asimov
