# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

if [ -f $(which powerline-daemon) ]; then
    powerline-daemon -q
    POWERLINE_BASH_CONTINUATION=1
    POWERLINE_BASH_SELECT=1
    . /usr/share/powerline/bash/powerline.sh
fi

if [ -f ~/.config/aliases ]; then
    . ~/.config/aliases
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export CPPCHECK=$HOME/projects/cppcheck/cppcheck

c() {
    cd "$1";
    ls
}

mkcd() {
    mkdir -p "$@" || return
    shift $(( $# - 1)) 
    cd "$1"
}

set -o vi
shopt -s autocd
shopt -s cdable_vars
dot=$HOME/.dotfiles
DISABLE_AUTO_TITLE=true

if [ -f ~/.config/machine-specific.sh ]; then
    . ~/.config/machine-specific.sh
fi
