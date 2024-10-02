#!/bin/bash

# Create if not existing .local/bin
mkdir -vp ~/.local/bin


# Setup tmux
#
# TODO: Install tpm, execute tpm update, etc.
ln -s ./tmux/.tmux.conf ~/.tmux.conf
ln -s ./tmux/ts-sessionizer ~/.local/bin/ts-sessionizer



echo "Needs to add to path: ~/.local/bin"
