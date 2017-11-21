#! /bin/bash

source manager

echo "Using package manager: $PKGMG"

command "$PKGMG install tmux vim zsh cmake"
