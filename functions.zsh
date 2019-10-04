#!/bin/zsh

function remove_untagged_containers() {
    docker rmi $(docker images | grep '^<none>' | awk '{print $3}')
}

function file_permissions() {
    stat -f "%A %a %N" "$@"
}

function get_named_ip(){
    aws ec2 describe-instances --filters "Name=tag:Name,Values=$1" --query "Reservations[].Instances[].PrivateIpAddress" --output text
}

function get_instances(){
    aws ec2 describe-instances --filters 'Name=tag:Name,Values=*' --query 'Reservations[].Instances[].[Tags[?Key==`Name`] | [0].Value,InstanceId,InstanceType,PrivateIpAddress]' --output table
}

function setup_ansible_playbook() {
    mkdir "$@"
    cd "$@"
    mkdir -p inventory/{testing,devtest,rtl,prod}/{group_vars,host_vars}
    touch inventory/{testing,devtest,rtl,prod}/hosts
    mkdir -p roles
    touch roles/requirements.yml
    touch site.yml
    touch README.md
    vagrant init bento/centos-7.4
}

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'

alias vim=nvim
alias vi=nvim
alias clear_aws='for i in $(env | grep AWS | grep -v AWS_HOME | cut -f 1 -d"="); do unset $i; done'
alias pwgen="pwgen -y 15"
alias s='ag --hidden --all-types --nogroup --ignore \".git\" -S "$@"'
