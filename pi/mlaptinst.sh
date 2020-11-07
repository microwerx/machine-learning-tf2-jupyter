#!/bin/sh
 
apt update -q && apt upgrade -y -q
# apt install -y -q wget curl gnupg apt-utils unzip cowsay ca-certificates
 
cowsay "Installing editors/console utilities"
apt install -y -q nano vim-tiny emacs-nox tmux htop cowsay
 
cowsay "Installing build tools and xorg"
apt install -y -q build-essential git
# apt install -y -q xserver-xorg-video-dummy
# apt install -y -q x11-apps xterm mesa-utils
# apt install -y -q firefox wmaker
 
cowsay "Installing Octave and Math libraries"
apt install -y octave libatlas-base-dev libopenblas-dev gfortran
 
cowsay "Installing python3 base"
apt install -y python3 python3-pip python3-venv
# apt install -y python3-setuptools python3-zmq python3-opencv python3-pydot python3-pip python3-h5py python3-imageio
 
apt autoremove -y
