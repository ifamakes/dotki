#!/bin/bash

DOTKI="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd ~
ln -s $DOTKI/zshrc .zshrc 2>/dev/null
sudo chsh $(whoami) -s /bin/zsh

mkdir -p $ZSH_CUSTOM/plugins/zoxide
ln -s $DOTKI/zoxide.plugin.zsh $ZSH_CUSTOM/plugins/zoxide/zoxide.plugin.zsh
2>/dev/null

mkdir -p .config/nvim
ln -s $DOTKI/init.vim .config/nvim/init.vim 2>/dev/null
mkdir -p .config/nvim/autoload
if ! [[ -f .config/nvim/autoload/plug.vim ]]; then
	curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -#Lo .config/nvim/autoload/plug.vim
	if [[ -x "$(command -v nvim)" ]]; then
		nvim +PlugInstall +qa
	fi
fi

ln -s $DOTKI/gitconfig .gitconfig 2>/dev/null

ln -s $DOTKI/tmux.conf .tmux.conf 2>/dev/null

exec $DOTKI/linker.sh

exec zsh
