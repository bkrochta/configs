#!/bin/bash
set -ex

# Check that zsh is installed
if [ ! -x "$(command -v zsh)" ]; then
    echo "zsh is not installed. Exiting..."
    exit 1
fi

ln -s $(pwd)/zsh ~/.zsh
touch ~/.zsh/history

echo "source ~/.zsh/zshrc" >> ~/.zshrc

chsh -s $(which zsh)