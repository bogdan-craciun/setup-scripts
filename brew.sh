echo "\r\n Installing BREW package manager... \r\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# After the install is done, run this:
# (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/bogdan/.zprofile
# And this:
# eval "$(/opt/homebrew/bin/brew shellenv)"

# Brew stuff to install:
# brew install gh
# brew install --cask marta
# 
# Install this, and the others after it:
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# brew install zsh-syntax-highlighting
# brew install zsh-completions
# chmod go-w '/usr/local/share'
