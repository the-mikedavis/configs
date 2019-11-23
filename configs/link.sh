#! /bin/bash

cd ~

ln -s -f ~/dotfiles/configs/copies/gitconfig ~/.gitconfig
ln -s -f ~/dotfiles/configs/copies/vimrc ~/.vimrc
ln -s -f ~/dotfiles/configs/copies/tmux.conf ~/.tmux.conf

ln -s -f ~/dotfiles/configs/fish/config.fish ~/.config/fish/config.fish
ln -s -f ~/dotfiles/configs/fish/fishfile ~/.config/fish/fishfile
ln -s -f ~/dotfiles/configs/fish/aliases.fish ~/.config/fish/aliases.fish

cd -
