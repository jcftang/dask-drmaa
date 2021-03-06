#!/usr/bin/env bash

set -e
set -x

# Install miniconda
wget http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda
export PATH="$HOME/miniconda/bin:$PATH"
conda update conda --yes
conda config --set always_yes yes --set changeps1 no
conda --version
