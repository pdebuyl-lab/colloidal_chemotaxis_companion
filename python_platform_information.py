from __future__ import print_function
import sys
import numpy as np
import scipy
import platform

print("Platform:", sys.platform)
print("Python:", sys.version)
print("Machine and architecture", platform.machine(), *platform.architecture())
print("NumPy:", np.version.version)
print("SciPy:", scipy.version.version)

