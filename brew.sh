#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install screen


# Install other useful binaries.
brew install ack
brew install git
brew install git-lfs
brew install tree
brew install s3cmd

# Install other personal apps
brew install --cask alfred
brew install gpg
brew install node
brew cask install sublime-text
brew cask install visual-studio-code
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install firefox
brew cask install diffmerge
brew cask install iterm2
brew cask install skype
brew cask install slack
brew cask install dropbox
brew cask install imageoptim
brew cask install macdown
brew cask install google-backup-and-sync
brew cask install vlc
brew cask install appcleaner
brew cask install rambox
brew cask install sourcetree
brew cask install thunderbird
brew cask install quicklook-json
brew cask install http-toolkit

# Remove outdated versions from the cellar.
brew cleanup
