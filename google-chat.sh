echo "\r\n Installing Google Chat app... \r\n"

brew install --cask google-chat-electron

xattr -d com.apple.quarantine /Applications/google-chat-electron.app
