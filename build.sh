#!/bin/bash

# Rest of the script...

# Install Python
curl -L https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh -o miniforge.sh
bash miniforge.sh -b -p $HOME/miniforge
export PATH=$HOME/miniforge/bin:$PATH

# Install dependencies and run build
cd .nxc
pip install -r requirements.txt
LOGLEVEL=INFO nxc build -i ... -o ./output --lunr --commits
