#!/bin/bash

ssh-keygen

git clone --bare ssh://git@codeberg.org/corite/cfg.git ~/.cfg

alias cfg="git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

cfg checkout

echo "bootstrapping done. continue by running the various setup scripts in ~/.config/cfg/"
