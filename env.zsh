#!/bin/zsh

CONFIG_DIR=$HOME/.dotfiles

# Source shell files to setup environment
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f $CONFIG_DIR/exports.zsh ] && source $CONFIG_DIR/exports.zsh
[ -f $CONFIG_DIR/functions.zsh ] && source $CONFIG_DIR/functions.zsh
[ -f $CONFIG_DIR/client_funcs.zsh ] && source $CONFIG_DIR/client_funcs.zsh
[ -f $CONFIG_DIR/local_config.zsh ] && source $CONFIG_DIR/local_config.zsh
[ -f $HOME/.sdkman/bin/sdkman-init.sh ] && source $HOME/.sdkman/bin/sdkman-init.sh

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Execute Rbenv Setup script
eval "$(rbenv init -)"

# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle :compinstall filename '${CONFIG_DIR}/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
