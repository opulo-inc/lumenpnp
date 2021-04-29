#
# Exports 3D STL files to a static image for documentation
#

import glob
import subprocess
import os

for name in glob.glob("./3D-Prints/*.stl"):
	print (name)

	f = open("./3D-Prints/render_image.scad", "w")
	f.write("import('")
	f.write(name)
	f.write("', convexity=3);")
	f.close()
	
	base = os.path.splitext(name)[0]
	
	subprocess.call(["openscad","-o","./3D-Prints/"+base+".png", "--quiet", "--render", "--viewall", "--hardwarnings", "./3D-Prints/render_image.scad" ])