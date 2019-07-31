#!/bin/bash

dotfiles=(.vimrc .tmux.conf)

for dotfile in "${dotfiles[@]}"; do
    cp ~/dotfiles/$dotfile ~
done

