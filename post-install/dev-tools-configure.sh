#!/bin/bash

set -x

echo "===docker==="
sudo groupadd docker
sudo usermod -aG docker $USER

echo "===rust==="
rustup default stable
rustup component add llvm-tools-preview

echo "===git==="
git config --global user.name "Ferdinand Laurel Edison"
git config --global user.email "ferdinand@laureledison.org"
git config --global core.editor nvim

echo "===github==="
gh auth login

echo "done"
