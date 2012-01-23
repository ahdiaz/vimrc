#!/bin/bash

ln -s ./.vim ~/.vim
ln -s ./.vimrc ~/.vimrc

git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
