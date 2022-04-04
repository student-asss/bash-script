#!/bin/bash

# first install inotify-tools
# sudo apt install inotify-tools

mkdir -p ~/bash/FolderName
# file monitoring
inotifywait -m ~/bash/FolderName

