#!/bin/bash

wget "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh" -O /tmp/miniforge.sh
bash /tmp/miniforge.sh -b -s
rm /tmp/miniforge.sh
