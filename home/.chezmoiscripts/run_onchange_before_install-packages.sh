#!/bin/bash

packages=(
    "zsh"
    "bat"
    "git"
    "curl"
)

sudo apt-get update
sudo apt-get install -y "${packages[@]}"