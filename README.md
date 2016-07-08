dotfiles
========

~/.\*

Installation
------------

    git clone https://github.com/JIghtuse/dotfiles.git ~/.dotfiles
    pushd ~/.dotfiles
        stow shell -t ~
        stow bash -t ~
        stow kde -t ~
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
        vim +PluginInstall +qall
    popd
