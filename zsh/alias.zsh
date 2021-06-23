#!/usr/bin/env zsh

alias cppcompile='c++ -std=c++11 -stdlib=libc++'
alias vim=nvim
alias vi=nvim
alias pwgen="pwgen -y 15"
alias ls=exa
alias bazel=bazelisk
alias k=kubectl
complete -F __start_kubectl k

alias zshconfig="code $CONFIG_DIR/.zshrc"
alias envconfig="code $CONFIG_DIR/env.zsh"
alias funcconfig="code $CONFIG_DIR/functions.zsh"
alias pluginconfig="code $CONFIG_DIR/plugins.zsh"
