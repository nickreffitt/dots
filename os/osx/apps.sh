#!/usr/bin/env bash
set -eu

#
# Application installer (via brew-cask)
#

# Apps
apps=(
  atom
  crashplan
  dropbox
  dockertoolbox
  google-chrome
  google-drive
  java
  little-snitch
  macvim
  qlcolorcode
  qlmarkdown
  qlprettypatch
  qlstephen
  quicklook-json
  skype
  slack
  sourcetree
  spotify
  vlc
)

# fonts
fonts=(
  font-m-plus
  font-clear-sans
  font-roboto
)

# Atom packages
atom=(
  vim-mode
)

# Specify the location of the apps
appdir="/Applications"

# Check for Homebrew
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

main() {

  # Ensure homebrew is installed
  homebrew

  # Install homebrew-cask
  echo "installing cask..."
  brew install brew-cask

  # Tap alternative versions
  brew tap caskroom/versions

  # Tap the fonts
  brew tap caskroom/fonts

  # install apps
  echo "installing apps..."
  brew cask install --appdir=$appdir ${apps[@]}

  # install fonts
  echo "installing fonts..."
  brew cask install ${fonts[@]}

  # install atom plugins
  echo "installing atom plugins..."
  apm install ${atom[@]}

  cleanup
}

homebrew() {
  if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
}

cleanup() {
  brew cleanup
}

main "$@"
exit 0
