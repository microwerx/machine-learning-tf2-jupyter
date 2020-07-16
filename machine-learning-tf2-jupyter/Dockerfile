#FROM tensorflow/tensorflow:latest-gpu-jupyter
FROM ubuntu:latest

LABEL version="0.1"
LABEL maintainer="microwerx@outlook.com"
LABEL description="Machine Learning with TensorFlow 2.x GPU/Jupyter, Keras, PyTorch, and more."

# Packages
# - TensorFlow with GPU and Jupyter Support
# - Pandas
# - Matplotlib

ENV DEBIAN_FRONTEND noninteractive
ENV DISPLAY :1

RUN echo 'export PATH=~/.local/bin:$PATH' >> $HOME/.bashrc
RUN echo "America/Anchorage" > /etc/timezone

RUN apt-get update -q
RUN apt-get upgrade -y -q

RUN apt-get install --no-install-recommends -y -q tzdata apt-utils
RUN apt-get install --no-install-recommends -y -q wget curl gnupg curl apt-utils wget unzip cowsay ca-certificates

RUN /usr/games/cowsay "Installing editors/console utilities"
RUN apt-get install --no-install-recommends -y -q nano vim-tiny emacs-nox tilde tmux

RUN /usr/games/cowsay "Installing NVIDIA runtime"
RUN curl -s -L https://nvidia.github.io/nvidia-container-runtime/gpgkey | \
    apt-key add - \
    && distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
    && curl -s -L https://nvidia.github.io/nvidia-container-runtime/$distribution/nvidia-container-runtime.list | \
        tee /etc/apt/sources.list.d/nvidia-container-runtime.list
RUN apt-get update -q
RUN apt-get install -y nvidia-container-runtime

RUN /usr/games/cowsay "Installing build tools and xorg"
RUN apt-get install --no-install-recommends -y -q build-essential git
RUN apt-get install --no-install-recommends -y -q xserver-xorg-video-dummy x11-apps
RUN apt-get install --no-install-recommends -y -q firefox wmaker xterm mesa-utils

RUN /usr/games/cowsay "Installing python3 base"
RUN apt-get install --no-install-recommends -y python3 python3-pip
RUN apt-get install -y python3-setuptools python3-zmq python3-opencv python3-pydot python3-pip python3-h5py python3-imageio

RUN /usr/games/cowsay "Installing Python Packages"
# Machine Learning Tools
RUN pip3 install -q jupyter
RUN pip3 install -q pandas
RUN pip3 install -q seaborn
RUN pip3 install -q torch
RUN pip3 install -q scikit-image
RUN pip3 install -q mtcnn

RUN /usr/games/cowsay "Installing Tensorflow"
# Tensorflow + Keras
RUN pip3 install -q tensorflow-gpu
RUN pip3 install -q tensorflow-tensorboard
RUN pip3 install -q tensorflow-hub
RUN pip3 install -q tfds-nightly
RUN pip3 install -q keras-tuner
RUN pip3 install -q keras-vggface

RUN /usr/games/cowsay "Installing online tools"
# Install from web
RUN pip3 install -q git+https://github.com/tensorflow/docs

EXPOSE 8888

RUN mkdir /tensorflow_datasets
RUN mkdir /tf

RUN chown -R 1000:1000 /tensorflow_datasets
RUN chown -R 1000:1000 /tf

RUN export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer
WORKDIR /home/developer
RUN mkdir .jupyter
COPY jupyter_notebook_config.json .jupyter/jupyter_notebook_config.json
RUN /usr/bin/wmgenmenu > GNUstep/Defaults/WMRootMenu
RUN chown -R 1000:1000 /home/developer

# RUN pip3 install -q google-colab

# CMD /usr/bin/wmaker && /usr/bin/xterm
CMD jupyter notebook --ip 127.0.0.1 
