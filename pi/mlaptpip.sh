#!/bin/bash
 
# Need to run
python3 -m venv --system-site-packages mlpi
source ./mlpi/bin/activate
 
pip3 install --upgrade pip
pip3 install setuptools
 
cowsay "Installing Python Packages"
# Machine Learning Tools
pip3 install jupyter
pip3 install jupyterlab
pip3 install pandas
pip3 install seaborn
# pip3 install torch
pip3 install scikit-image
pip3 install mtcnn
pip3 install scipy
pip3 install imutils
pip3 install json_minify
 
cowsay "Installing OpenCV"
#pip3 install picamera[array]
pip3 install opencv-contrib-python
pip3 install mtcnn
 
# cowsay "Let's set up a password"
# python3 jupyter password

deactivate
exit 0

cowsay "Installing Tensorflow"
# Tensorflow + Keras
pip3 install tensorflow-cpu
# pip3 install tensorflow-tensorboard
# pip3 install tensorflow-hub
pip3 install tfds-nightly
pip3 install keras-tuner
pip3 install keras-vggface

# cowsay "Installing online tools"
# # Install from web
pip3 install git+https://github.com/tensorflow/docs

deactivate
