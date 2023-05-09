#!/bin/bash

# list of default settings to change how macOS functions

# change default screenshot name
defaults write com.apple.screencapture name 'screenshot'

# change default screenshot type
defaults write com.apple.screencapture type jpg

# change default screenshot location
defaults write com.apple.screencapture location ~/screenshots

# use touch ID on MacBook instead of sudo in terminal
# sudo nano /etc/pam.d/sudo
# then add:
# auth sufficient pam_tid.so

# don't create the .DS_Store files
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

# macOS dock effects for faster show/hide
defaults write com.apple.dock autohide-delay -float 0; defaults write com.apple.dock autohide-time-modifier -int 0.2; killall Dock

