#
# Exports 3D STL files to a static image for documentation
#

import glob
import subprocess
import os
import sys

dirName = "LumenPnP-" + sys.argv[1] + "/img"
if not os.path.exists(dirName):
    os.mkdir(dirName)
    print("Directory " , dirName ,  " Created ")
else:    
    print("Directory " , dirName ,  " already exists")

for name in glob.glob(".github/workflows/scripts/stl-export/*.stl"):
	
	print(name)
	
	file=os.path.abspath(name)

	f = open("./render_image.scad", "w")
	f.write("import(\"")
	f.write(file)
	f.write("\", convexity=3);")
	f.close()
	
	base = os.path.splitext(file)[0]
	base = dirName + "/" + os.path.basename(name)
	base = base[:-4]
	print(base)

	head, sep, tail = base.partition('_')
	base = head
		
	
	subprocess.call(["openscad","-o",base+".png", "--quiet", "--render", "--projection=o", "--viewall","--colorscheme","BeforeDawn", "--imgsize", "512,512", "--hardwarnings", "./render_image.scad" ])
	#subprocess.call(["/Applications/OpenSCAD.app/Contents/MacOS/OpenSCAD","-o",base+".png", "--quiet", "--render", "--projection=o", "--viewall","--colorscheme","BeforeDawn", "--imgsize", "512,512", "--hardwarnings", "./render_image.scad" ])
	
if os.path.exists("./render_image.scad"):
    os.remove("./render_image.scad")
