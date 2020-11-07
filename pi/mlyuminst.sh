#!/bin/sh
 
yum update -q && yum upgrade -y -q
# yum install -y -q wget curl gnupg apt-utils unzip cowsay ca-certificates
 
cowsay "Installing editors/console utilities"
yum install -y -q nano vim-minimal emacs-nox tmux htop cowsay
 
cowsay "Installing build tools and xorg"
yum install -y -q build-essential git
# yum install -y -q xserver-xorg-video-dummy
# yum install -y -q x11-apps xterm mesa-utils
# yum install -y -q firefox wmaker
 
cowsay "Installing Octave and Math libraries"
yum install -y octave atlas-devel openblas-devel gfortran
 
cowsay "Installing python3 base"
yum install -y python3 python3-pip python3-virtualenv
# yum install -y python3-setuptools python3-zmq python3-opencv python3-pydot python3-pip python3-h5py python3-imageio
 
yum autoremove -y
