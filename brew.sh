#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Taps
brew tap 'caskroom/cask'
brew tap 'caskroom/fonts'
brew tap 'caskroom/versions'
brew tap 'homebrew/bundle'
brew tap 'homebrew/dupes'

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
# running `chsh`. To do so, run `sudo chsh -s /usr/local/bin/bash`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

# Install useful binaries.
brew install mas
brew install git
brew install wget

# Install apps.
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome 
brew cask install rubymine
brew cask install skype
brew cask install spotify
brew cask install sublime-text
brew cask install virtualbox
brew cask install vlc
# rubymine, xcode, hipchat, android studio...

# Install apps from appstore.
mas install 'Giphy Capture', id: 668208984
mas install 'Sketch', id: 402476602

# Remove outdated versions from the cellar.
brew cleanup
