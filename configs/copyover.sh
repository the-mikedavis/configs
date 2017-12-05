#! /bin/bash

for f in *; do
    if [[ "./$f" != $0 && ! -d "$f" ]]; then
        echo "Moving $f to ~/.$f"
        command cp $f "$HOME/.$f"
    fi
done
