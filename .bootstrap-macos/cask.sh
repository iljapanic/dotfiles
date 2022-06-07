set -e

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we're using the latest Homebrew, and that package details are up-to-date.
brew update

# Grab our favourite fonts first.
# brew tap homebrew/cask-fonts
# brew install font-hack
# brew install font-hack-nerd-font
# brew install font-jetbrains-mono
#brew install font-jetbrainsmono-nerd-font # Use in case the above breaks.

brew install 1password
brew install affinity-photo
brew install airtable
brew install appcleaner
brew install arduino
brew install around
brew install audacity
brew install backblaze
brew install balenaetcher
brew install bartender
brew install bettertouchtool
brew install brave-browser
brew install calibre
brew install choosy
brew install cleanmymac
# brew install cleanshot - issues with SMA key
brew install contexts
brew install cron
brew install dictionaries
brew install discord
brew install fantastical
brew install fig
brew install figma
# brew install figmadaemon - issues with installation
brew install firefox
brew install focus
brew install google-chrome
brew install handbrake
brew install hazel
brew install hazeover
brew install hyper
brew install iconjar
brew install imageoptim
brew install istat-menus
brew install keepingyouawake
brew install keyboard-cleaner
brew install libreoffice
brew install little-snitch
brew install logseq
brew install loom
brew install macdown
brew install mark-text
brew install messenger
brew install mounty
brew install name-mangler
brew install netspot
brew install nextcloud
brew install notion
brew install obs
brew install obsidian
brew install pdf-expert
brew install pixelsnap
brew install postman
brew install processing
brew install prusaslicer
brew install raycast
brew install rekordbox
brew install rhino
brew install rightfont
brew install rocket
brew install scroll-reverser
brew install sequel-pro
brew install shifty
brew install sip
brew install skype
brew install slack
brew install soulseek
brew install spotify
brew install subtitles
brew install swiftdefaultappsprefpane
brew install swinsian
brew install teamviewer
brew install telegram
brew install textexpander
brew install thingsmacsandboxhelper
brew install timing
brew install tor-browser
brew install touchdesigner
brew install transmission
brew install transmit
brew install tunnelblick
brew install uninstallpkg
brew install visual-studio-code
brew install vlc
brew install vnc-viewer
brew install whatsapp
brew install zoom
brew install zotero
