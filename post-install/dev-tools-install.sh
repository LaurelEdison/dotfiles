#!/bin/bash

set -e

echo "Updating system..."
sudo pacman -Syu

PACKAGES=(
    base-devel
    git
    github-cli
    gitlab
    vim
    neovim
    npm
    nvm
    rustup
    docker
    docker-compose
    go
    golangci-lint
    jdk17-openjdk
    npm
    nvm
    openssh
    openssl
    python
    rustup
    zip
    unzip
    vegeta
    valgrind
    stow
    qemu-base
)

echo "Installing packages..."
sudo pacman -S --needed "${PACKAGES[@]}"

echo "Done."
