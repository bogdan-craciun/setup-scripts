# Setup NVM on Apple Silicon (Node JS)

- `touch .zshrc` (if it doesn't already exist)
- `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash`
- `source .zshrc`
- `nvm install 18.16.0` (that's the latest LTS version at the time of writing this)
- `nvm alias default 18.16.0` (set it as default if needed)
- quit and reopen Terminal

### Test that everything works:

- `node -v`
- `npm -v`
- `nvm -v`
