#!/usr/bin/env bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/clarksoncj/nvim.git ~/.config/nvim
git clone https://github.com/ryanoasis/nerd-fonts.git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

curl -L git.io/antigen > /usr/local/share/antigen/antigen.zsh

CURDIR="$(pwd)"
ln -sf $CURDIR/.tmux.conf $HOME/.tmux.conf
ln -sf $CURDIR/.zsh_profile $HOME/.zsh_profile
ln -sf $CURDIR/.zsh-update $HOME/.zsh-update
ln -sf $CURDIR/.zshrc $HOME/.zshrc
