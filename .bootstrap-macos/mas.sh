#!/usr/bin/env bash

set -e

command -v mas >/dev/null 2>&1 || brew install mas

# Apple
mas install 409183694 # Keynote
mas install 409201541 # Pages
mas install 408981434 # iMovie
mas install 497799835 # Xcode

## Other tools & utilities
mas install 1056643111 # Clocker
mas install 1081413713 # GIF Brewery 3
mas install 775737590 # iA Writer
mas install 405399194 # Kindle
mas install 1534275760 #LanguageTool
mas install 472226235 # LanScan
mas install 1289197285 # MindNode
mas install 1532597159 # MP3tag
mas install 881415018 # Mytuner Pro
mas install 1464122853 # NextDNS
mas install 504700302 # PDF Squeezer 3
mas install 537211143 # Photo Bulk
mas install 442168834 # SiteSucker
mas install 1508732804 # Soulver 3
mas install 1176895641 # Spark
mas install 425424353 # The Unarchiver
mas install 904280696 # Things 3
mas install 1278508951 # Trello

sudo xcodebuild -license accept
