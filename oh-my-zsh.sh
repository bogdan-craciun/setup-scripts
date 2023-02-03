sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# brew install zsh-syntax-highlighting
# brew install zsh-completions
# chmod go-w '/usr/local/share'

To activate the syntax highlighting, add the following at the end of your .zshrc:
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


To activate these completions, add the following to your .zshrc:

if type brew &>/dev/null; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

	autoload -Uz compinit
	compinit
fi

You may also need to force rebuild `zcompdump`:

  rm -f ~/.zcompdump; compinit

Additionally, if you receive "zsh compinit: insecure directories" warnings when attempting
to load these completions, you may need to run this:

  chmod -R go-w '/opt/homebrew/share/zsh'

