#!/bin/sh
set -e

if [ -e ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
    echo "~/.vimrc exist, rename to ~/.vimrc.bak"
fi

cd ~/.vim_runtime
cat ~/.vim_runtime/.vimrc > ~/.vimrc
echo "vimrc install successfully!"
