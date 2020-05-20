#!/bin/sh

DOTKI="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ~
ln -s $DOTKI/zshrc .zshrc
mkdir -p .config/nvim
ln -s $DOTKI/init.vim .config/nvim/init.vim
mkdir -p .config/nvim/autoload
ln -s $DOTKI/.plug.vim .config/nvim/autoload/plug.vim
ln -s $DOTKI/gitconfig .gitconfig
mkdir -p .config/youtube-dl
ln -s $DOTKI/youtube-dl .config/youtube-dl/config
