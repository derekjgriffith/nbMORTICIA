
# coding: utf-8

# ## Lens Tutorial

# This tutorial illustrates the construction of optics.Lens objects in the MORTICIA sensor package.

# In[1]:

import numpy as np
import pandas as pd
import xray
xD = xray.DataArray  # Abbreviation for creating xray.DataArray objects
import matplotlib.pyplot as plt
import scipy.interpolate
from pint import UnitRegistry
ureg = UnitRegistry()
Q_ = ureg.Quantity
def U_(units):
    # Utility function for pint Quantity of 1.0 with given units
    return Q_(1.0, units)
get_ipython().magic(u'matplotlib inline')

import optics
get_ipython().magic(u'load_ext autoreload')
get_ipython().magic(u'aimport optics')
get_ipython().magic(u'autoreload 1')


# In[2]:

# Create the lens transmission function - the fraction of light transmitted to the focal plane as a function
# of wavelength
# Transmission functions are assumed to be zero outside the defined range of the xray DataArray
spec_trans = xD([0.8, 0.9, 0.8], [('Wavelength', [500.0, 600.0, 900.0])], name='Transmission', 
                attrs={'units_Transmission': U_(''), 'units_Wavelength': U_('nm')})
spec_trans


# In[3]:

spec_trans.plot()
plt.ylim([0,1])
plt.grid()


# In[4]:

# Build a lens with this spectral transmission function, EFL of 30 mm and focal ratio of 2
myLens = optics.Lens(efl=[30, 'mm'], fno=2.0, trn=spec_trans)


# In[ ]:



