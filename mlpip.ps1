# Need to run
virtualenv --system-site-packages mlenv
./mlenv/Scripts/activate.ps1

python -m pip cache purge
python -m pip install --upgrade pip
python -m pip install setuptools

echo "Installing Python Packages"
# Machine Learning Tools
python -m pip install numpy==1.19.3
python -m pip install jupyterlab
python -m pip install pandas
python -m pip install seaborn
# python -m pip install torch
python -m pip install scikit-image
python -m pip install mtcnn
 
echo "Installing OpenCV"
#python -m pip install picamera[array]
python -m pip install opencv-contrib-python
python -m pip install mtcnn
 
#echo "Let's set up a password"
#python3 jupyter password

echo "Installing Tensorflow"
# Tensorflow + Keras
python -m pip install tensorflow-cpu
python -m pip install tensorflow-tensorboard
python -m pip install tensorflow-hub
python -m pip install tfds-nightly
python -m pip install keras-tuner
python -m pip install keras-vggface
 
echo "Installing online tools"
# Install from web
python -m pip install git+https://github.com/tensorflow/docs

deactivate
