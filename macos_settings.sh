#!/bin/bash
# Script to apply general settings

# Mouse Tracking Speed
defaults write -g com.apple.mouse.scaling 3
# Trackpad Tracking Speed
defaults write -g com.apple.trackpad.scaling 1
# Double-Click Speed
defaults write -g com.apple.mouse.doubleClickThreshold Not set
# Secondary Click (Right-Click)
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode "OneButton"
# Scroll Direction
defaults write -g com.apple.swipescrolldirection -bool Not set
# Trackpad tap to click 
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking 1

# dock
defaults write com.apple.dock autohide -bool false
defaults write com.apple.dock persistent-others -array-add '{"tile-data"={"file-data"={"_CFURLString"="file:///Applications/";"_CFURLStringType"=15;};"file-type"=2;};"tile-type"="directory-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{"tile-data"={"file-data"={"_CFURLString"="file:///Users/$(whoami)/Downloads/";"_CFURLStringType"=15;};"file-type"=2;};"tile-type"="directory-tile";}'
defaults write com.apple.dock persistent-others -array-add '{"tile-data"={"arrangement"=1;"displayas"=1;"showas"=1;};"tile-type"="directory-tile";}'
defaults write com.apple.dock persistent-apps -array-add '{"tile-data"={"arrangement"=1;"displayas"=1;"showas"=1;};"tile-type"="directory-tile";}'