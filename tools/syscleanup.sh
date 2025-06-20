#!/bin/bash

# Clear system cache
sudo rm -rf /Library/Caches/*
sudo rm -rf /System/Library/Caches/*
sudo rm -rf ~/Library/Caches/*

# Clear system log files
sudo rm -rf /var/log/*
sudo rm -rf /Library/Logs/*
sudo rm -rf ~/Library/Logs/*

# Empty trash
rm -rf ~/.Trash/*

# Delete old downloads
find ~/Downloads -type f -mtime +30 -delete

# Clean Homebrew
brew cleanup

# Check disk usage
df -h
du -sh ~/*

echo "System cleanup complete."
