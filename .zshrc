# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
CONFIG_DIR="$HOME/.dotfiles"

# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle :compinstall filename '${CONFIG_DIR}/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Set name of the theme to load.
ZSH_THEME="bureau"

# Source shell files to setup environment
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/share/antigen/antigen.zsh
source $CONFIG_DIR/functions.zsh
source $CONFIG_DIR/env.zsh
source $CONFIG_DIR/plugins.zsh
source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

if [[ -a $CONFIG_DIR/client_funcs.sh ]]; then
    source $CONFIG_DIR/client_funcs.sh
fi

if [[ -a $CONFIG_DIR/local_config.sh ]]; then
    source $CONFIG_DIR/local_config.sh
fi

alias zshconfig="code $CONFIG_DIR/.zshrc"
alias envconfig="code $CONFIG_DIR/env.zsh"
alias funcconfig="code $CONFIG_DIR/functions.zsh"
alias pluginconfig="code $CONFIG_DIR/plugins.zsh"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
