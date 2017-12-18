#!/bin/bash


start() {
    git submodule init
    git submodule update

    ln -sf vim-pathogen/autoload/ .

    mkdir -p bundle

    ln -sf ../a.vim bundle 
    ln -sf ../colors  bundle
    ln -sf ../ctrlp.vim  bundle
    ln -sf ../emmet-vim   bundle
    ln -sf ../nerdtree  bundle
    ln -sf ../supertab   bundle
    ln -sf ../tabular   bundle
    ln -sf ../vim-pathogen   bundle
    ln -sf ../vim-template bundle
    ln -sf ../jedi-vim bundle
    ln -sf ../tagbar bundle

    /usr/bin/pip install jedi --user

}

uninstall() {
    unlink bundle/a.vim 
    unlink bundle/colors  
    unlink bundle/ctrlp.vim  
    unlink bundle/emmet-vim   
    unlink bundle/nerdtree  
    unlink bundle/supertab   
    unlink bundle/tabular   
    unlink bundle/vim-pathogen   
    unlink bundle/vim-template 
    unlink bundle/jedi-vim
    unlink bundle/tagbar
    unlink autoload
    rmdir bundle
}

case "$1" in
  start)
    start
    ;;
  uninstall)
    uninstall
    ;;
  *)
    echo "Usage: $0 {start|uninstall}"
esac
