#
# Exports 3D STL files to a static image for documentation
#

import glob
import subprocess
import os
import re

f = open("../../doc/content/en/docs/reference/3dprint/index.md", "w")

f.write("---\n");
f.write("title: \"FDM Reference\"\n");
f.write("linkTitle: \"FDM Reference\"\n");
f.write("weight: 30\n");
f.write("description: >\n");
f.write("  Diagrams and images of the various 3d printed parts using FDM print methods\n");
f.write("---\n");

for name in glob.glob("./3D-Prints/*.stl"):
#	print (name)

	file=os.path.abspath(name)

	base = os.path.splitext(file)[0]
	print(base)

	f.write("Filename|Size X|Size Y|Size Z|Min X|Min Y|Min Z|Max X|Max Y|Max Z|Number of Facets|Volume (mm3)|GCode name|")
	f.write("--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|--------|")
	f.write("\n")	
	f.write("\n")
	
	f.write(base)
	f.write("|")

	proc=subprocess.Popen(["/home/stuart/PrusaSlicer.AppImage","--rotate","180","--load","PrusaSlicerConfig.ini","--info","--output",base+"_{used_filament}_{extruded_volume}_{print_time}.gcode", "-g", file ], stdout=subprocess.PIPE)
	out = proc.communicate()[0]
	out=str(out, "utf-8")
	
	pattern = re.compile(r'^(\w{5,20})\s=\s([0-9.-]{1,20})', re.MULTILINE)
	for (label, value) in re.findall(pattern, out):
		f.write(value)
		f.write("|")

#	print(out)
#	f.write(out)
	f.write("\n")
	
	for gcodename in glob.glob(base+"*.gcode"):
		f.write(gcodename)
		f.write("|")
		os.remove(gcodename)

	f.write("\n")

f.close()

