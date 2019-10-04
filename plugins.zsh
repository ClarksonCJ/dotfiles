#!/bin/zsh

# Use Antigen for plugin management
antigen use oh-my-zsh

antigen bundle aws
antigen bundle autojump
antigen bundle brew
antigen bundle common-aliases
antigen bundle command-not-found
antigen bundle compleat
antigen bundle docker
antigen bundle docker-compose
antigen bundle encode64
antigen bundle extract
antigen bundle fzf
antigen bundle git
antigen bundle git-extras
antigen bundle git-flow
antigen bundle go
antigen bundle jsontools
antigen bundle kubectl
antigen bundle osx
antigen bundle python
antigen bundle ruby
antigen bundle vagrant
antigen bundle vault
antigen bundle z
antigen bundle zsh-navigation-tools
antigen bundle zsh-users/zsh-completions

antigen theme bureau

antigen apply
