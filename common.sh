#! /bin/bash

source manager

echo "Using package manager: $PKGMG"

command "$PKGMG install tmux vim git zsh"

for f in *; do
    if [[ "./$f" != $0 && ! -d "$f" && "$f" != "manager" ]]; then
        echo "Moving $f to ~/.$f"
        command ln $f "test/.$f"
    fi
done
