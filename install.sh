#!/bin/bash

workdir=$(pwd)
sourcedir=$workdir/$(dirname $0)
bundledir=$HOME/.vim/bundle
vimdir=$HOME/.vim
current_ts=$(date "+%s")
youcompleteme=$bundledir/YouCompleteMe

[[ -d $bundledir ]] && mv $bundledir $bundledir.$current_ts
[[ -d $vimdir ]] && mv $vimdir $vimdir.$current_ts

ln -s $sourcedir $vimdir

mkdir -p $bundledir
pushd $bundledir
git clone git://github.com/Shougo/neobundle.vim
popd

while [[ ! -d $youcompleteme ]]; do
    echo 'Please open vim in a different shell to install all the bundles'
    read
done

pushd $youcompleteme
./install.sh --clang-completer --omnisharp-completer
popd

echo 'vimrc install complete'
