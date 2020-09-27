#!/bin/bash

ln -sf ~/dotki/zshrc ~/.zshrc
ln -sf ~/dotki/init.vim ~/.config/nvim/init.vim
ln -sf ~/dotki/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
ln -sf ~/dotki/agnoster.zsh-theme ~/.oh-my-zsh/custom/themes/agnoster.zsh-theme

exec zsh
