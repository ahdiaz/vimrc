#!/bin/bash

ln -s `pwd`/vim ~/.vim
ln -s `pwd`/vimrc ~/.vimrc

git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update
