# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000
unsetopt nomatch
bindkey -v
bindkey '^R' history-incremental-pattern-search-backward
bindkey '\e.' insert-last-word
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/jightuse/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

fi

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

PS1="${debian_chroot:+($debian_chroot)}\u@\h [\W]\$ "

autoload -U promptinit
promptinit
prompt redhat
