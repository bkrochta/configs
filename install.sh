#!/bin/bash
set -ex

# Check that zsh is installed
if [ ! -f /bin/zsh ]; then
    echo "zsh is not installed. Exiting..."
    exit 1
fi

touch ~/.zshrc


ln -s $(pwd)/zsh ~/.zsh
touch ~/.zsh/history

echo "source ~/.zsh/zshrc" >> ~/.zshrc

chsh -s $(which zsh)