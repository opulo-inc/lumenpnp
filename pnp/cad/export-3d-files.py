#!/usr/bin/python3
import platform

if platform.system()=="Windows":
	FREECADPATH = 'c:/Program Files/FreeCAD 0.19/bin/' # For Windows
else:
	FREECADPATH = '/usr/lib/freecad-daily-python3/lib/' # For Ubuntu
	#FREECADPATH = '/usr/lib64/freecad/lib64/' # For Fedora


import sys
import os
sys.path.append(FREECADPATH)
import FreeCAD
import MeshPart

# Create output folder if needed
if not os.path.exists('3D-Prints'):
    os.makedirs('3D-Prints')

print("Python version:")
print (sys.version)

for cad_file in os.listdir("FDM"):
        print("Processing " + cad_file)

        doc = FreeCAD.open('FDM/'+cad_file)

        # Getting file name from part number emboss
        name = ""
        for obj in doc.Objects:
            if obj.isDerivedFrom("Part::Part2DObject"):
                if (obj.Label == "PN"):
                    name = obj.String
                    print("PN:"+name)

        # If there is no part number embossed throw error
        if name == "":
            raise ValueError("Part " + cad_file + " doesn't have a ShapeString called PN for part number emboss")

        # Generate STL
        shape = doc.getObject("Body").Shape.copy(False)
        shape.Placement = doc.Body.getGlobalPlacement()
        mesh = doc.addObject("Mesh::Feature", "Mesh")
        mesh.Mesh = MeshPart.meshFromShape(Shape=shape, LinearDeflection=0.01, AngularDeflection=0.025, Relative=False)
        mesh.Mesh.write("3D-Prints/" + name + ".stl")
        FreeCAD.closeDocument(doc.Name)
