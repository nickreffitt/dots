#!/usr/bin/env bash
set -eu

#
# Binary installer
#

# Check for Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew
brew update 
brew tap caskroom/cask
brew install brew-cask

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

# Install other useful binaries
binaries=(
  graphicsmagick
  python
  mongo
  trash
  node
  hub
  git
  hub
  go
  zsh
  zsh-completions
)

# Install the binaries
brew install ${binaries[@]}

# Install spot
if test ! $(which spot); then
  curl -L https://raw.github.com/guille/spot/master/spot.sh -o /usr/local/bin/spot && chmod +x /usr/local/bin/spot
fi

# Install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Create a $GOPATH
mkdir -p $HOME/Go

# Remove outdated versions from the cellar
brew cleanup

exit 0
