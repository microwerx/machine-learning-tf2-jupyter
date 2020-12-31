# machine-learning-tf2-jupyter
Docker for TensorFlow 2 and other Machine Learning Tools


## Steps for Raspberry Pi

- Install Intel OpenVINO toolkit
- Install Python 3.7
- Get a Intel Neural Compute Stick 2
- Use a RPI 3B or 4
- Use a camera in the RPI
- Run the `mlpip` script to install the virtual environment and appropriate packages


## Intel's Guide

First, you need to install the Intel Python distribution

- []()
- `source /opt/intel/`

- [Intel Get Started Guide](https://software.intel.com/content/www/us/en/develop/articles/get-started-with-intel-system-studio-and-intel-distribution-of-openvino-toolkit-for-python.html)
- [Installing OpenVINO on macOS](https://docs.openvinotoolkit.org/2021.1/openvino_docs_install_guides_installing_openvino_macos.html)
- [Get Started with Neural Compute Stick](https://software.intel.com/content/www/us/en/develop/articles/get-started-with-neural-compute-stick.html)

- `source /opt/intel/openvino_2021/bin/setupvars.sh`

## Jupyter Lab Installation

If installing for the first time, run one of the `mlpip` scripts. It will create a virtual environment called `mlenv` and install a number of packages including:

- 


## Jupyter Lab Instructions

On Linux or UNIX systems, run `source ./mlenv/bin/activate` to start the virtual environment. Then run `jupyter lab` to begin Jupyter Lab. When you are finished, run `deactivate` to stop the virtual environment.
