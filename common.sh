#! /bin/bash

source bash_profile

echo "Using package manager: $PKGMG"

#command $PKGMG install tmux vim git

for f in *; do
    if [[ "./$f" != $0 && ! -d "$f" ]]; then
        echo "Moving $f to ~/.$f"
        command cp $f "test/.$f"
    fi
done
