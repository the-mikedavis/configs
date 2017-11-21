#! /bin/bash
source manager
orig="`pwd`"
$PKGMG install cmake cargo
PATH=$PATH:$HOME/.cargo/bin
git clone https://github.com/ogham/exa.git ~/exa
cd ~/exa
sudo env "PATH=$PATH" make install
cd $orig
