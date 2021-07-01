#!/usr/bin/python3

import os
import sys
import traceback
from pathlib import Path
from typing import List

freecad_paths = [
    '/home/runner/work/index/index/squashfs-root/usr/lib',  # For CI when using AppImage
    '/usr/lib/freecad/lib/',  # For CI
    '/usr/lib/freecad-daily-python3/lib/',  # For Ubuntu
    '/usr/lib64/freecad/lib64/',  # For Fedora
    '/Applications/FreeCAD.app/Contents/Resources/lib',  # For Mac OS X
    'c:/Program Files/FreeCAD 0.18/bin/',  # For Windows
    'c:/Program Files/FreeCAD 0.19/bin/',  # For Windows
]

for path in freecad_paths:
    if os.path.exists(path):
        print(f"Added possible FreeCAD path: {path}")
        sys.path.append(path)

import FreeCAD
import MeshPart

print('Python version:')
print(sys.version)

print('FreeCAD version:')
print(FreeCAD.Version())


def get_shape_placement(print_plane):
    map_mode = print_plane.MapMode
    attachment = print_plane.AttachmentOffset
    print(print_plane.MapMode, attachment)

    if map_mode == "ObjectXY":
        z_down = FreeCAD.Vector(0, 0, -1)
    elif map_mode == "ObjectXZ":
        z_down = FreeCAD.Vector(0, 0, 1)
    elif map_mode == "ObjectYZ":
        z_down = FreeCAD.Vector(0, 0, 1)
    else:
        raise ValueError(f"Unknown map mode {map_mode}")

    rotation = FreeCAD.Rotation(z_down, attachment.Base)
    # print(rotation.toEuler())

    return FreeCAD.Placement(FreeCAD.Vector(0, 0, 0), rotation)


def process_file(cad_file: Path):
    print("Processing " + cad_file.name)

    doc = FreeCAD.open(str(cad_file.absolute()))

    # Getting file name from part number emboss
    name_options = [obj.String for obj in doc.Objects if
                    obj.isDerivedFrom("Part::Part2DObject") and obj.Label == "PN"]
    if name_options:
        name = name_options[0]
    else:
        # If there is no part number embossed throw error
        raise ValueError("Part " + cad_file.name + " doesn't have a ShapeString called PN for part number emboss")

    if cad_file.name[:8] != name[:8]:
        # STL model filename does not match the part number embedded in the file
        raise ValueError("Part " + cad_file.name[:8] + " doesn't match the part number in the FreeCad model - "+name[:8])


    body = [obj for obj in doc.Objects if obj.Label == "Body"]

    if len(body) == 0:
        print(f"Cannot find body object. {len(doc.Objects)} objects present")
        for obj in doc.Objects:
            print(f"- {obj.Label}")

        raise Exception(f"Body not found in model {cad_file.name}")

    body = body[0]

    shape = body.Shape.copy(False)

    print_planes = [obj for obj in doc.Objects if obj.Label == "PrintPlane"]
    if print_planes:
        plane = print_planes[0]
        map_mode = plane.MapMode
        if map_mode in ["ObjectXY", "ObjectXZ", "ObjectYZ"]:
            shape.Placement = get_shape_placement(plane)
        else:
            print(f"Warning, cannot determine orientation of {cad_file.name} with map mode {map_mode}")

    # Generate STL
    mesh = doc.addObject("Mesh::Feature", "Mesh")
    mesh.Mesh = MeshPart.meshFromShape(Shape=shape, LinearDeflection=0.01, AngularDeflection=0.025, Relative=False)
    mesh.Mesh.write("3D-Prints/" + name + ".stl")
    FreeCAD.closeDocument(doc.Name)
    print(f"Generated file 3D-Prints/{name}.stl")


if __name__ == '__main__':
    # Create output folder if needed
    output_directory = Path('3D-Prints')
    output_directory.mkdir(parents=True, exist_ok=True)

    fdm_path = Path('FDM')

    exceptions: List[Exception] = []
    for f in fdm_path.glob('*.FCStd'):
        try:
            process_file(f)
        except Exception as ex:
            print(f"An error occurred while processing {str(f)}: ")
            traceback.print_exc()

            exceptions.append(ex)

    if exceptions:
        verb = "was" if len(exceptions) == 1 else "were"
        noun = "exception" if len(exceptions) == 1 else "exceptions"
        print(f"There {verb} {len(exceptions)} {noun}")

        assert len(exceptions) == 0
