#!/bin/bash

DOTKI="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd $(mktemp -d)
curl https://github.com/ogham/exa/releases/download/v0.9.0/exa-linux-x86_64-0.9.0.zip -OJL
unzip exa-linux-x86_64-0.9.0.zip
sudo mv exa-linux-x86_64 /usr/local/bin

cd ~
ln -s $DOTKI/zshrc .zshrc
sudo chsh $(whoami) -s /bin/zsh

mkdir -p .config/nvim
ln -s $DOTKI/init.vim .config/nvim/init.vim
mkdir -p .config/nvim/autoload
curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -Lo .config/nvim/autoload/plug.vim
nvim +PlugInstall +qa

ln -s $DOTKI/gitconfig .gitconfig

mkdir -p .config/youtube-dl
ln -s $DOTKI/youtube-dl .config/youtube-dl/config
