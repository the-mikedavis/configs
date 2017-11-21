#! /bin/bash

source manager

echo "Using package manager: $PKGMG"

command "$PKGMG install tmux vim git zsh cmake"

for f in *; do
    if [[ "./$f" != $0 && ! -d "$f" && "$f" != "manager" ]]; then
        echo "Moving $f to ~/.$f"
        command ln $f "~/.$f"
    fi
done
