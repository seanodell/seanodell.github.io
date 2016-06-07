#!/bin/bash

#if [ ! -d venv ]; then
#    brew install python
#
#    virtualenv --python=/usr/local/opt/python/bin/python2.7 venv
#fi

#source venv/bin/activate

pip install jupyter[all] numpy matplotlib
python2 -m ipykernel install --user

jupyter notebook
