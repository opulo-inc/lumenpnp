#
# Exports 3D STL files to a static image for documentation
#

import glob
import subprocess
import os

for name in glob.glob("./3D-Prints/*.stl"):
	print (name)
	
	file=os.path.abspath(name)

	f = open("/tmp/render_image.scad", "w")
	f.write("import(\"")
	f.write(file)
	f.write("\", convexity=3);")
	f.close()
	
	base = os.path.splitext(file)[0]
	print(base)
	subprocess.call(["openscad","-o",base+".png", "--quiet", "--render", "--projection=o", "--viewall","--colorscheme","BeforeDawn", "--imgsize", "2048,2048", "--hardwarnings", "/tmp/render_image.scad" ])
	subprocess.call(["convert","-thumbnail","300",base+".png",base+"_thumb.png"])
	
if os.path.exists("/tmp/render_image.scad"):
    os.remove("/tmp/render_image.scad")
