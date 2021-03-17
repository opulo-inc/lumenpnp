#!/usr/bin/python3
FREECADPATH2 = '/usr/lib64/freecad/lib64' # For Fedora
FREECADPATH = '/usr/lib/freecad/lib' # For Ubuntu
import sys
import os
sys.path.append(FREECADPATH)
sys.path.append(FREECADPATH2)
import FreeCAD
import MeshPart

for cad_file in os.listdir("FDM"):
    doc = FreeCAD.open('FDM/'+cad_file)
    for obj in doc.Objects:
        if obj.isDerivedFrom("PartDesign::Body"):
            name = ""
            for obj2 in doc.Objects:
                if obj2.isDerivedFrom("Part::Part2DObject"):
                    if (obj2.Label == "PN"):
                        name = obj2.String
            #if name == "":
            #    raise ValueError("Part " + cad_file + " doesn't have a ShapeString called PN for part number emboss")
            shape = obj.Shape.copy(False)
            shape.Placement = obj.getGlobalPlacement()
            mesh = doc.addObject("Mesh::Feature", "Mesh")
            mesh.Mesh=MeshPart.meshFromShape(Shape=shape, LinearDeflection=0.01, AngularDeflection=0.025, Relative=False)
            mesh.Label=obj.Name
            mesh.Mesh.write("3D-Prints/" + name + ".stl")
    FreeCAD.closeDocument(doc.Name)