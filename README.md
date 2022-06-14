# dotfiles

## Scripts

* `macos.sh`: Set various macOS preferences (each operation performed is explained with a comment for reference).
* `brew.sh`: Install Homebrew and various packages.
* `cask.sh`: Install various GUI applications via Homebrew Cask.
* `mas.sh`: Install various applications from the Mac App Store.
* `pip.sh`: Install various Python-based dependencies.
* `npm.sh`: Install various Node-based dependencies.
* `dock.sh`: Configures the icons on my Dock using `dockutil`.

## Usage

The recommended execution order is as follows:

1. `$ ./macos.sh`
2. In parallel:
   1. `$ ./brew.sh`
   2. `$ ./cask.sh`
   3. `$ ./mas.sh` (start after `mas` has been installed by `brew.sh`)
3. `$ ./pip.sh`
4. `$ ./npm.sh`
5. `$ ./dock.sh`

## Apps that need to be installed manually

- [Hemingway App](https://hemingwayapp.com/desktop.html) ([Gumroad dashboard](https://app.gumroad.com/))

## Exporting settings

Make sure you export libraries and settings from the following apps before migrating:

- [ ] BetterTouchTool

- [ ] Brave (sync chain)

- [ ] Choosy

- [ ] Dictionaries

- [ ] MP3tag

- [ ] Raycast

- [ ] Swinisian

- [ ] Transmit

- [ ] VSCode config (sync plugin)

- [ ] (Calibre) - should be moved to self-hosted cloud

## Todo

- [ ] Create a script that exports app defaults
- [ ] Configure [stow](https://www.gnu.org/software/stow/) to symlink dotfiles

## Configurable

Make sure to cofigure following apps before starting to use the computer:

- Backblaze
- NextCloud

## Credits

This work is heavily inspired by the following repository:

* https://github.com/johanmeiring/bootstrap-macos
