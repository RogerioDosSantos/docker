#!/bin/bash

echo "### Install Vim into a local machine ###"
echo "Note: You do not need to install it on the docker vm."

# Ensure that run as root
if [ "$EUID" -ne 0 ]
  then echo "This program must be run with administrator privileges.  Aborting"
  exit
fi

# Go to the directory where the bash file is
cd "$(dirname "$0")"
echo "Running from $(pwd)"

# Exit on any non-zero status.
trap 'exit' ERR
set -E

# Install the following programs:
# - Sync and Backup 
#     rsync
# - Chryptography 
#     encfs
# - Build Essentials 
#     build-essential cmake python-dev
# - TMUX 
#     tmux
# - NodeJS 
#     nodejs npm
#     sudo npm -y install -g typescript
# - Text Editors 
#     vim
# - Programming tools 
#     silversearcher-ag
#     ctags
#     clang clang-format-3.5 clang-modernize-3.5
#     cppcheck
#     doxygen
#     cgdb
apt-get update \
  && apt-get install -y \
      git \
      rsync \
      encfs \
      build-essential \
      cmake \
      python-dev \
      nodejs \
      npm \
      vim-gtk \
      silversearcher-ag \
      ctags \
      clang \
      clang-format-3.5 \
      clang-modernize-3.5 \
      cppcheck \
      doxygen \
      cgdb \
  && npm -y install -g typescript

