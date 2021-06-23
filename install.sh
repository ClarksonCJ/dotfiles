#!/usr/bin/env bash

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/clarksoncj/nvim.git ~/.config/nvim
git clone https://github.com/ryanoasis/nerd-fonts.git

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

curl -L git.io/antigen > /usr/local/share/antigen/antigen.zsh

mkdir -p ~/.config

CURDIR="$(pwd)"
ln -sf $CURDIR/tmux/.tmux.conf $HOME/.tmux.conf
ln -sf $CURDIR/i3 ~/.config/i3
ln -sf $CURDIR/zsh/.zsh_profile $HOME/.zsh_profile
ln -sf $CURDIR/zsh/.zsh-update $HOME/.zsh-update
ln -sf $CURDIR/zsh/.zshrc $HOME/.zshrc
