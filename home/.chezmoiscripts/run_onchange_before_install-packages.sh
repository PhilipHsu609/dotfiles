#!/bin/bash

packages=(
    "zsh"
    "curl"
    "binutils"
    "build-essential"
)

sudo apt-get update
sudo apt-get install -y "${packages[@]}"