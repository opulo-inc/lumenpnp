FREECADPATH = '/usr/lib/freecad/lib/'
import sys
sys.path.append(FREECADPATH)
import FreeCAD
import MeshPart

# Open Assembly
assembly = FreeCAD.open("assembly.FCStd")

for obj in assembly.Objects:
    if ("b_FDM" in obj.Name):
        print(obj.Name)
        shape = obj.Shape.copy(False)
        shape.Placement = obj.getGlobalPlacement()
        mesh = assembly.addObject("Mesh::Feature", "Mesh")
        mesh.Mesh=MeshPart.meshFromShape(Shape=shape, LinearDeflection=0.01, AngularDeflection=0.0872665, Relative=False)
        mesh.Label=obj.Name
        mesh.Mesh.write("3D-Prints/" + obj.Name + ".obj")

FreeCAD.closeDocument(assembly.Name)