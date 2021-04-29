#
# Exports 3D STL files to a static image for documentation
#

import glob
import subprocess
import os

for name in glob.glob("./3D-Prints/*.stl"):
	print (name)

	f = open("render_image.scad", "w")
	f.write("import('")
	f.write(name)
	f.write("', convexity=3);")
	f.close()
	
	base = os.path.splitext(name)[0]
	print(base)
	subprocess.call(["openscad","-o",base+".png", "--quiet", "--render", "--projection=o", "--viewall","--colorscheme","BeforeDawn", "--imgsize", "2048,2048", "--hardwarnings", "./render_image.scad" ])

if os.path.exists("render_image.scad"):
    os.remove("render_image.scad")
