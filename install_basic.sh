#!/bin/sh
set -e

if [ -e ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
    echo "~/.vimrc exist, rename to ~/.vimrc.bak"
fi

cd ~/.vim_runtime
cat ~/.vim_runtime/basic.vim > ~/.vimrc
vim +PlugInstall +qa
echo "vimrc install successfully!"
