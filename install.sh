#!/bin/bash

exec 3>&1

# start subscript
(

# get the absolute path of the script
DOTKI="$( cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd ~

ln -s $DOTKI/zshrc .zshrc 
# sudo chsh $(whoami) -s $(which zsh)

mkdir -p .config/nvim
ln -s $DOTKI/init.vim .config/nvim/init.vim

mkdir -p .config/nvim/autoload
if ! [[ -f .config/nvim/autoload/plug.vim ]]; then
	curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -#Lo .config/nvim/autoload/plug.vim
	if [[ -x "$(command -v nvim)" ]]; then
		nvim +PlugInstall +qa
	fi
fi

ln -s $DOTKI/gitconfig .gitconfig

ln -s $DOTKI/tmux.conf .tmux.conf

if ! [[ -x "$(command -v exa)" ]]; then
	# install exa
	echo "installing exa" >&3
	cargo install exa
fi 

if ! [[ -x "$(command -v zoxide)" ]]; then
	# install zoxide
	echo "installing cargo" >&3
	cargo install zoxide
fi

if [[ ! -d $ZSH/custom/plugins/zsh-nvm ]]; then
	# install zsh-nvm 
	echo "installing zsh-nvm" >&3
	git clone https://github.com/lukechilds/zsh-nvm $ZSH/custom/plugins/zsh-nvm
fi

if [[ ! -d "$ZSH/custom/plugins/zsh-syntax-highlighting" ]]; then
	# install zsh-highlighting-syntax
	echo "installing zsh-highlighting-syntax" >&3
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/custom/plugins/zsh-syntax-highlighting
fi

if ! [[ -x "$(command -v starship)" ]]; then
	# install starship
	echo "installing starship" >&3
	sh -c "$(curl -fsSL https://starship.rs/install.sh)" >&3
fi
) |

exec zsh

echo "done!"
