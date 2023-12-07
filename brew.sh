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
