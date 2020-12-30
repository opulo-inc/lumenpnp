#
# Sets version number to a ShapeString called PN
#

FREECADPATH = '/usr/lib64/freecad/lib64'

import sys
sys.path.append(FREECADPATH)
import os
import FreeCAD
import Draft

for subdir, dirs, files in os.walk("FDM/"):
    for file in files:
        fdm_file = FreeCAD.open("./FDM/" + file.split('.')[0] + "/" + file)
        if (fdm_file.ShapeString.Label == "PN"):
            fdm_file.ShapeString.String = file.split("_")[0] # get version number from file name
            fdm_file.recompute()

FreeCAD.closeDocument(fdm_file.Name)