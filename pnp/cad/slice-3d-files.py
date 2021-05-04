#
# Exports 3D STL files to a static image for documentation
#

import glob
import subprocess
import os
import re

f = open("../../doc/content/en/docs/reference/3dprint/index.md", "w")

f.write("---\n");
f.write("title: \"3D Printing Detailed Table\"\n");
f.write("linkTitle: \"3D Printing Detailed Table\"\n");
f.write("weight: 30\n");
f.write("description: >\n");
f.write("  Details of the 3D print objects\n");
f.write("---\n");

f.write("\n")
f.write("## 3D Print Objects - Detailed information")
f.write("\n")
f.write("\n")
f.write("|Filename|Size X|Size Y|Size Z|Min X|Min Y|Min Z|Max X|Max Y|Max Z|Number of Facets|Volume (mm3)|Filament Used|Extruded Volume|Print Time|")
f.write("\n")
f.write("|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|")
f.write("\n")	

for name in glob.glob("./3D-Prints/*.stl"):
	print (name)

	file=os.path.abspath(name)
	head, tail = os.path.split(file)
#	print(tail)


	base = os.path.splitext(file)[0]
	
	f.write("|")
	f.write(os.path.splitext(tail)[0])
	f.write("|")

	proc=subprocess.Popen(["/home/stuart/PrusaSlicer.AppImage","--rotate","180","--load","PrusaSlicerConfig.ini","--info","--output",base+"_{used_filament}_{extruded_volume}_{print_time}.gcode", "-g", file ], stdout=subprocess.PIPE)
	out = proc.communicate()[0]
	out=str(out, "utf-8")
	
	pattern = re.compile(r'^(\w{5,20})\s=\s([0-9.-]{1,20})', re.MULTILINE)
	for (label, value) in re.findall(pattern, out):
		f.write( str(float(value) ))
		f.write("|")

#	print(out)
#	f.write(out)
	f.write("\n")
	
	for gcodename in glob.glob(base+"*.gcode"):

		pattern2 = re.compile(r'FDM_\d{4}_\d{2}_[a-zA-Z_]{5,99}([\d.]{1,8})_([\d.]{1,8})_([0-9dhms]{1,8}).gcode', re.MULTILINE)
		for (a,b,c) in re.findall(pattern2, out):
			f.write( a )
			f.write("|")
			f.write( b )
			f.write("|")
			f.write( c )
			f.write("|")
	
		os.remove(gcodename)

	f.write("\n")

f.close()

