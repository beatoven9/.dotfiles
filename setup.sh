#!/bin/bash

function checkForConfigFolder(){

    if [ ! -e ~/.config/ ]; then
	    mkdir ~/.config/
    fi

}

function linkDotToConfigDir() {
    ln -sfn ~/.dotfiles/.config/$1 ~/.config/
}

function linkDotToHomeDir() {
    ln -sfn ~/.dotfiles/$1 ~/
}

function makeLinks() {

    linkDotToHomeDir ".vimrc"
    linkDotToHomeDir ".tmux.conf"
    linkDotToHomeDir ".zsh_aliases"

    linkDotToHomeDir "scripts"
}

read -rp "This may overwrite files. proceed? [y/n] " -n 1;
echo "";
if [[ $REPLY =~ ^[Yy]$ ]]; then

    # checkForConfigFolder
    makeLinks

fi;
