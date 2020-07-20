#!/bin/bash

DOTKI="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd ~
ln -s $DOTKI/zshrc .zshrc 2>/dev/null
sudo chsh $(whoami) -s /bin/zsh

mkdir -p .config/nvim
ln -s $DOTKI/init.vim .config/nvim/init.vim 2>/dev/null
mkdir -p .config/nvim/autoload
if ! [[ -f .config/nvim/autoload/plug.vim ]]; then
	curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -#Lo .config/nvim/autoload/plug.vim
	#nvim +PlugInstall +qa
fi

ln -s $DOTKI/gitconfig .gitconfig 2>/dev/null

mkdir -p .config/youtube-dl
ln -s $DOTKI/youtube-dl .config/youtube-dl/config 2>/dev/null

exec zsh
