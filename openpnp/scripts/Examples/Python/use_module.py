from __future__ import absolute_import, division
import os.path
import sys

# Get location of the utility module.
python_scripts_folder = os.path.join(scripting.getScriptsDirectory().toString(),
                                     'Examples', 'Python')
print('Adding {} to import path'.format(python_scripts_folder))

# Add the path to the utility module to PYTHONPATH.
sys.path.append(python_scripts_folder)
print('New import paths: '.format(sys.path))

# Import and use the module.
from utility import print_hello

print_hello()
