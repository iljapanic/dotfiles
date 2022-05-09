#!/usr/bin/env bash

# Start fresh
dockutil --remove all

# Add apps that are used more regularly than others.
dockutil --add "/Applications/Brave Browser.app"
dockutil --add "/Applications/Cron.app"
dockutil --add "/Applications/Things.app"
dockutil --add "/Applications/Obsidian.app"

# Add folders to the "others" section (i.e. after the spacer, next to the trash)
dockutil --add '~/Downloads' --view fan --display stack --sort dateadded --section others
