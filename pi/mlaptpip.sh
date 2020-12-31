#!/bin/bash
 
# Need to run
python3 -m venv --system-site-packages mlpi
source ./mlpi/bin/activate
 
python3 -m pip install --upgrade pip
python3 -m pip install setuptools
 
cowsay "Installing Python Packages"
# Machine Learning Tools
python3 -m pip install jupyter
python3 -m pip install jupyterlab
python3 -m pip install pandas
python3 -m pip install seaborn
# python3 -m pip install torch
python3 -m pip install scikit-image
python3 -m pip install mtcnn
python3 -m pip install scipy
python3 -m pip install imutils
python3 -m pip install json_minify
 
cowsay "Installing OpenCV"
#python3 -m pip install picamera[array]
python3 -m pip install opencv-contrib-python
python3 -m pip install mtcnn
 
# cowsay "Let's set up a password"
# python3 jupyter password

deactivate
exit 0

cowsay "Installing Tensorflow"
# Tensorflow + Keras
python3 -m pip install tensorflow-cpu
# python3 -m pip install tensorflow-tensorboard
# python3 -m pip install tensorflow-hub
python3 -m pip install tfds-nightly
python3 -m pip install keras-tuner
python3 -m pip install keras-vggface

# cowsay "Installing online tools"
# # Install from web
python3 -m pip install git+https://github.com/tensorflow/docs

deactivate
