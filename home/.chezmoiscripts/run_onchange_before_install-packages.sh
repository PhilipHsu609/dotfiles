#!/bin/bash

packages=(
    "zsh"
    "curl"
    "binutils"
)

sudo apt-get update
sudo apt-get install -y "${packages[@]}"