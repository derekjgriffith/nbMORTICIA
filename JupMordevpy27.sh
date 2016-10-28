#!/bin/bash
# Activate the Python 2.7 Development environment for MORTICIA in Windows
# There must be a morticia.pth file in /Anaconda/envs/mordevpy2/Lib/site-packages/ that points
# to the root directory of your clone of the the MORTICIA GitHub repository
# for example, morticia.pth might have the single line /home/jsmith/GitHub/MORTICIA

# NOTE : Switching environments does not work for notebooks unless Jupyter is installed
#        in the environment which you switch to. In this case, Jupyter must be installed
#        in the mordevpy27 environment.

activate mordevpy27
# Get Jupyter pointing in the right direction  # deprecated ?
# jupyter kernelspec install-self --user
jupyter notebook



