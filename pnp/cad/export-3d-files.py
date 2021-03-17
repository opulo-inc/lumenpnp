#!/usr/bin/python3
FREECADPATH = '/usr/lib/freecad/lib' # For Ubuntu
import sys
import os
sys.path.append(FREECADPATH)
import FreeCAD
import MeshPart

print("1")

for cad_file in os.listdir("FDM"):
    print("2")
    doc = FreeCAD.open('FDM/'+cad_file)
    print("3")
    for obj in doc.Objects:
        print("4")
        if obj.isDerivedFrom("PartDesign::Body"):
            print("5")
            name = ""
            for obj2 in doc.Objects:
                print("6")
                if obj2.isDerivedFrom("Part::Part2DObject"):
                    print("7")
                    if (obj2.Label == "PN"):
                        print("8")
                        name = obj2.String
            #if name == "":
            #    raise ValueError("Part " + cad_file + " doesn't have a ShapeString called PN for part number emboss")
            print("9")
            shape = obj.Shape.copy(False)
            print("10")
            shape.Placement = obj.getGlobalPlacement()
            print("11")
            mesh = doc.addObject("Mesh::Feature", "Mesh")
            print("12")
            mesh.Mesh=MeshPart.meshFromShape(Shape=shape, LinearDeflection=0.01, AngularDeflection=0.025, Relative=False)
            print("13")
            mesh.Label=obj.Name
            print("14")
            mesh.Mesh.write("3D-Prints/" + name + ".stl")
            print("15")
    FreeCAD.closeDocument(doc.Name)
    print("16")