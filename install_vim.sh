#! /bin/bash

sudo pacman -Syu vim;
git clone https://github.com/osiaeg/config_files.git;
cd config_files/;
cp .vimrc ~/;

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim;

echo "alias ll='ls -alh'" >> ~/.zshrc
source ~/.bashrc

ooo

asdkljf

o
