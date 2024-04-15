#!/bin/bash

packages=(
    "zsh"
    "curl"
)

sudo apt-get update
sudo apt-get install -y "${packages[@]}"