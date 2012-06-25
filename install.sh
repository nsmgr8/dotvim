#!/bin/bash

workdir=$(pwd)
sourcedir="$workdir/$(dirname $0)"
vimrc=$sourcedir"/vimrc"
gvimrc=$sourcedir"/gvimrc"
bundledir=$HOME"/.vim/bundle"

ln -s $sourcedir $HOME/.vim
ln -s $vimrc $HOME/.vimrc
ln -s $gvimrc $HOME/.gvimrc

mkdir -p $bundledir
pushd $bundledir
git clone git://github.com/gmarik/vundle.git
popd

vim -C BundleInstall
