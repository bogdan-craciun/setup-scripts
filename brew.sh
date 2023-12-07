echo "\r\n Installing BREW package manager... \r\n"

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add this to .zshrc:
# eval $(/opt/homebrew/bin/brew shellenv)