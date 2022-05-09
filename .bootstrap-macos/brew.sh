#!/usr/bin/env bash

set -e

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install Homebrew if it's not installed yet.
command -v brew 2>/dev/null || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we're using the latest Homebrew, and that package details are up-to-date.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install Mac App Store command line interface
brew install mas

# Enable Homebrew-Cask
brew tap homebrew/cask

# Install mas
brew install mas

# Install Java
brew install java

# Install `wget` with IRI support.
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim
brew install grep
brew install screen
brew install perl
brew install python@3.10
brew install ruby

# Install GIT
brew install git

# Install zsh/bash tools
brew install broot
brew install cheat
brew install fzf
brew install lsd
brew install zoxide
brew install zplug

# Install keybindings and fuzzy completion
$(brew --prefix)/opt/fzf/install

# Install Python tools
brew install pyenv
brew install pyenv-virtualenv

# Install PHP
brew install php # Currently 8.1
# brew install php@7.4
# brew link php@7.4 --force --overwrite
brew install composer

# Install useful CLI tools and binaries
brew install gping
brew install htop
brew install imagemagick
brew install speedtest-cli
brew install youtube-dl


### copied for potential future use ###

# Install media tools.
# brew install ffmpeg
# brew install jasper
# brew install jpegoptim
# brew install lame
# brew install x264
# brew install x265
# brew install xvid

# Install font tools.
# brew install fontconfig
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2


# Remove outdated versions from the cellar.
# brew cleanup
