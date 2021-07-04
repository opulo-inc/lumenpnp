#
# Attempts to "slice" the 3D STL files to generate metrics on size and length of filament needed
# Stuart Pittaway, May 2021

import glob
import subprocess
import os
import re
import platform
from datetime import datetime, timedelta
import math  

#Case sensitive without file extension, indicate which parts require higher infill and strength
#Which parts are needed multiple times?
file_specification = [ 
	{"name":"FDM-0005-01","quantity":2,"strong":True},
	{"name":"FDM-0008-01","quantity":2}, 
	{"name":"FDM-0009-00","quantity":6,"strong":True}, 
	{"name":"FDM-0011-01","strong":True},
	{"name":"FDM-0012-01","strong":True},
	{"name":"FDM-0013-01","strong":True},
	{"name":"FDM-0017-01","strong":True},
	{"name":"FDM-0025-01","quantity":6},
	{"name":"FDM-0003-01","quantity":2}
	]


if platform.system()=="Windows":
	slicercmd="C:\Program Files\Prusa3D\PrusaSlicer\prusa-slicer-console.exe"
elif platform.system()=="Darwin":
	slicercmd="/Applications/Original Prusa Drivers/PrusaSlicer.app/Contents/MacOS/PrusaSlicer"
else:
	slicercmd="/home/runner/work/index/index/PrusaSlicer.AppImage"

f = open("../../doc/content/en/docs/reference/3dprint/index.md", "w")

f.write("---\n");
f.write("title: \"3D Print Detailed Information Table\"\n");
f.write("linkTitle: \"3D Print Detailed Information Table\"\n");
f.write("weight: 30\n");
f.write("description: >\n");
f.write("  Details of the 3D print objects\n");
f.write("---\n");

f.write("\n")
f.write("## 3D Printed Objects - Detailed Information")
f.write("\n")
f.write("Example print times and filament requirements using Prusa Slicer and a Prusa MK3 printer, 0.2mm layer height and standard PLA filament.")
f.write("\n")
f.write("\n")
f.write("|Filename|Filament Used (m)|Extruded Volume (mm3)|Print Time (h:m:s)|Total Print Time|Fill Density|Perimeters|Top/Bottom Solid Layers|Quantity Required|")
f.write("\n")
f.write("|--------|--------|--------|--------|--------|--------|--------|--------|--------|")
f.write("\n")	

filament_used=0
totalduration=timedelta()

for name in glob.glob("./3D-Prints/*.stl"):

	file=os.path.abspath(name)
	head, tail = os.path.split(file)

	base = os.path.splitext(file)[0]
	n = os.path.splitext(tail)[0]
	
	print("Slicing:" + n)
	
	# Output link to the relevant file in the documentation web site
	f.write("|[")
	f.write(n)
	f.write("]({{< relref \"/docs/reference/fdm#")
	f.write(n.lower())
	f.write("\" >}})|")
	
	
	#Standard parameters
	filldensity="20%"
	perimeters="3"
	topbottomsolidlayers="5"

	quantity=1
	
	#Search the dictionary for this file/key
	detail=next((item for item in file_specification if item["name"] == n), None)
	
	if detail!=None:
		if "quantity" in detail:
			quantity=detail["quantity"]
		
		if "strong" in detail:
			strong=detail["strong"]

			if strong==True:
				#Stronger parameters
				filldensity="30%"
				perimeters="4"
				topbottomsolidlayers="5"

	# Slice the STL file and capture the parameters embedded into the filename
	# override the parameters to match the strength required
	proc=subprocess.Popen([slicercmd,"--rotate","0","--load","PrusaSlicerConfig.ini","--info","--fill-density",filldensity,"--perimeters",perimeters,"--bottom-solid-layers",topbottomsolidlayers,"--top-solid-layers",topbottomsolidlayers,"--gcode","--output",base+"_{used_filament}_{extruded_volume}_{print_time}.gcode", "-g", file ], stdout=subprocess.PIPE)
	out = proc.communicate()[0]
	out=str(out, "utf-8")

#	pattern = re.compile(r'^(\w{5,20})\s=\s([0-9.-]{1,20})', re.MULTILINE)
#	for (label, value) in re.findall(pattern, out):
#		f.write( str(float(value) ))
#		f.write("|")

#	print(out)
#	f.write(out)
	
	for gcodename in glob.glob(base+"*.gcode"):
		pattern2 = re.compile(r'FDM-\d{4}-\d{2}_([\d.]{1,8})_([\d.]{1,8})_([0-9dhms]{1,8}).gcode', re.MULTILINE)
		for (a,b,c) in re.findall(pattern2, out):
			#Filament Used (m)
			f.write( a )
			filament_used+=quantity * float(a)
			f.write("|")
			#Extruded Volume (mm3)
			f.write( b )
			f.write("|")
			#Print Time
			
			# Extract the duration and keep a running total
			# also calculate based on the quantity
			pattern3 = re.compile(r'(\d{0,2})m|(\d{0,2})h(\d{0,2})m')
			for (m1,h,m2) in re.findall(pattern3, c):
				if m1=="":
					#We have a "1h52m" format
					duration=timedelta(hours=int(h), minutes=int(m2))
					f.write(str(duration))
					f.write("|")
					duration=duration*quantity
					totalduration+=duration
					f.write(str(duration))
				else:
					#We just have minutes "34m"
					duration=timedelta(minutes=int(m1))
					f.write(str(duration))
					f.write("|")
					duration=duration*quantity
					totalduration+=duration
					f.write(str(duration))
			
			f.write("|")

		os.remove(gcodename)

	f.write( filldensity)
	f.write("|")
	f.write( perimeters )
	f.write("|")
	f.write( topbottomsolidlayers )
	f.write("|")
	f.write( str(quantity) )
	f.write("|")

	f.write("\n")

f.write("\n")
f.write("\n")
f.write("### Totals")
f.write("\n")
f.write("Filament used:\n")
f.write("- Length: ")
f.write(str(round(filament_used,2)))
f.write(" meters\n")
f.write("- Weight: ")
f.write(str(round(filament_used*1.24*math.pi*math.pow(0.175/2,2)*100,2)))
f.write(" grams\n")
f.write("\n")
f.write("Total duration: ")
f.write(str(totalduration))
f.write("\n")

f.write("\n")
f.write("\n")
f.close()

