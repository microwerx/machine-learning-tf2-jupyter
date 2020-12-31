#!/bin/sh

# Create Conda environnment
conda create -n mlenv -c intel python=3 numpy scipy cython
conda activate mlenv

