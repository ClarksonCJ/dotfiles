#!/bin/zsh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# PATH
export MANPATH=$MANPATH:/usr/local/man
export MANPATH=$MANPATH:/usr/local/opt/coreutils/libexec/gnuman
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export GOPATH=$HOME/Projects/Go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:/usr/local/opt/python@2/bin
export PATH=$PATH:/usr/local/opt/python@2/libexec/bin
export PATH=$PATH:/Users/Chris/Library/Python/3.7/bin
# Virtual Environment
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects/Python
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIPENV_VENV_IN_PROJECT=1
# source /usr/local/bin/virtualenvwrapper.sh

export JAVA_HOME="'/usr/libexec/java_home -v 1.8'"
export GIT_MERGE_AUTOCOMMIT=no
export TERM=xterm-256color
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34:su=0:sg=0:tw=0:ow=0:"

# Enable color in grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

export LESS='--ignore-case --raw-control-chars'
export PAGER='less'

export LANG=en_US.UTF-8
export LC_CTYPE="en_US.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_COLLATE=C

# Random COWSAY in ansible
export ANSIBLE_COW_SELECTION=random

export THEME_NERD_FONTS="yes"

# Execute Rbenv Setup script
eval "$(rbenv init -)"
