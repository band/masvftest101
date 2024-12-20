#!/bin/bash

# Install Python
curl -L https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh -o miniforge.sh
bash miniforge.sh -b -p $HOME/miniforge
export PATH=$HOME/miniforge/bin:$PATH

# Install dependencies and run build
cd .nxc
npm ci
pip install -r requirements.txt
nxc build -i .. -o ./output --lunr --commits
