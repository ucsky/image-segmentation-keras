#!/bin/bash
set -e
sudo apt-get install -y libsm6 libxext6 libxrender-dev
$WORKON_ACTIVATE=$HOME/Envs/image-segmentation-keras/bin/activate
if [ ! -f $WORKON_ACTIVATE ];then
    mkvirtualenv image-segmentation-keras
fi
. $WORKON_ACTIVATE
python setup.py install
pip install pytest
pip install tensorflow-gpu=1.15
