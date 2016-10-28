#!/bin/bash
# This is a convenience batch file to run Jupyter notebooks in the root Anaconda environment.
# Run this batch file in order to use the notebooks in the root Anaconda environment 
# (not in a conda virtual environment) 
# Deactivate any applicable virtual environment
deactivate
# jupyter kernelspec install-self --user # deprecated ?
jupyter notebook



