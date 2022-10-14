#!/usr/bin/python3
import math
import os
import sys
import traceback
from pathlib import Path
from typing import List
import time
import csv

freecad_paths = [
    '/home/runner/work/lumenpnp/lumenpnp/squashfs-root/usr/lib',  # For CI when using AppImage
    '/usr/lib/freecad/lib/',  # For CI
    '/usr/lib/freecad-daily-python3/lib/',  # For Ubuntu
    '/usr/lib64/freecad/lib64/',  # For Fedora
    '/Applications/FreeCAD.app/Contents/MacOS',  # For Mac OS X
    'c:/Program Files/FreeCAD 0.18/bin/',  # For Windows
    'c:/Program Files/FreeCAD 0.19/bin/',  # For Windows
]

# Font file relative to this python script
font_folder = '../../../lib/fonts'

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


def process_file(cad_file: Path):
    print("Processing " + cad_file.name)

    doc = FreeCAD.open(str(cad_file.absolute()))

    bom = open("../../../bom.csv")

    csv_reader = csv.reader(bom, delimiter=',')
    count = 0
    flag = False
    for row in csv_reader:
        if row[0] == cad_file.name[:-6]:
            print("found a part!")
            print(row[0])
            count = row[2]
            print(count)
            if count != "-" and count != "":
                flag = True
                break

    #generates name with quantity
    if flag:
        name = cad_file.name[:-6] + "_" + count + "x"
        print("making count name")
    else:
        name = cad_file.name[:-6]
        print("making no count name")


    # # Getting file name from part number emboss
    # name_options = [obj.String for obj in doc.Objects if
    #                 obj.isDerivedFrom("Part::Part2DObject") and obj.Label == "PN"]
    # if name_options:
    #     name = name_options[0]
    # else:
    #     # If there is no part number embossed throw error
    #     raise ValueError("Part " + cad_file.name + " doesn't have a ShapeString called PN for part number emboss")

    # if cad_file.name[:8] != name[:8]:
    #     # STL model file name does not match the part number embedded in the file
    #     raise ValueError(
    #         "Part " + cad_file.name[:8] + " doesn't match the part number in the FreeCad model - " + name[:8])

    body = [obj for obj in doc.Objects if obj.Label == "Body"]

    if len(body) == 0:
        print(f"Cannot find body object. {len(doc.Objects)} objects present")
        for obj in doc.Objects:
            print(f"- {obj.Label}")

        raise Exception(f"Object named 'Body' not found in model {cad_file.name}")

    body = body[0]

    # Find font references in the model and ensure they point to the correct font file
    fonts = [obj for obj in doc.Objects if
             obj.isDerivedFrom("Part::Part2DObject") and hasattr(obj, "FontFile")]

    for obj in fonts:
        font_file_property = obj.getPropertyByName('FontFile')
        new_font_file = os.path.join(font_folder, os.path.split(font_file_property)[1])
        if not os.path.isfile(new_font_file):
            raise FileNotFoundError(f"Cannot find font file {new_font_file}")

        if new_font_file != font_file_property:
            print(f"\tCorrected '{obj.Label}' font file name from {font_file_property}")
            setattr(obj, "FontFile", new_font_file)
            obj.touch()

    # Recompute the model to ensure its valid and does not contain broken references or edges
    # Mark each object as "changed"
    for obj in doc.Objects:
        obj.touch()

    # Recompute the entire document
    t0 = time.perf_counter()
    doc.recompute(None, True, True)
    t1 = time.perf_counter()
    total = t1 - t0
    print(f"\tRecompute of model took {total:3f}s")

    # Now check for any invalid shapes
    # for obj in doc.Objects:
    #     if 'Invalid' in obj.State:
    #         raise Exception(f"Shape '{obj.Name}' in model '{cad_file.name}' is invalid")

    shape = body.Shape.copy(False)

    print_planes = [obj for obj in doc.Objects if obj.Label == "PrintPlane"]
    if print_planes:
        plane = print_planes[0]
        matrix = plane.Placement.Matrix.inverse()
        matrix.rotateX(math.pi)
        shape = shape.transformShape(matrix)
        # Very useful debug info if shape orientation gets funky
        # print(f"\t\tShape Placement: {shape.Placement}")
        # print(f"\t\tPlane Placement: {plane.Placement}")
        # print(f"\t\tPlane Offset: {plane.AttachmentOffset}")
        # print(f"\t\tMin X: {round(min(v.Point.x for v in shape.Vertexes), 2)}")
        # print(f"\t\tMax X: {round(max(v.Point.x for v in shape.Vertexes), 2)}")
        # print(f"\t\tMin Y: {round(min(v.Point.y for v in shape.Vertexes), 2)}")
        # print(f"\t\tMax Y: {round(max(v.Point.y for v in shape.Vertexes), 2)}")
        # print(f"\t\tMin Z: {round(min(v.Point.z for v in shape.Vertexes), 2)}")
        # print(f"\t\tMax Z: {round(max(v.Point.z for v in shape.Vertexes), 2)}")
    else:
        print(f"\tWarning, missing PrintPlane object in file {cad_file.name}")

    # Delete any STL files with similar names (to cater for increments in version number)
    delete_files = Path('stl-export').glob(name[0:9] + '??.stl')
    for to_delete in delete_files:
        print(f"\tDeleting previous STL model {to_delete}")
        os.remove(to_delete)

    # Generate STL
    mesh = doc.addObject("Mesh::Feature", "Mesh")
    mesh.Mesh = MeshPart.meshFromShape(Shape=shape, LinearDeflection=0.01, AngularDeflection=0.025, Relative=False)
    mesh.Mesh.write("stl-export/" + name + ".stl")
    FreeCAD.closeDocument(doc.Name)
    print(f"\tGenerated file 3D-Prints/{name}.stl")


if __name__ == '__main__':
    # Create output folder if needed
    output_directory = Path('stl-export')
    output_directory.mkdir(parents=True, exist_ok=True)

    fdm_path = Path('../../../pnp/cad/FDM')

    exceptions: List[Exception] = []

    # Use command line supplied file list if we have one
    files = []

    for p in sys.argv[1:]:
        # Strip any folder names from parameter and assume it's a file in FDM folder
        files.append(fdm_path.joinpath(Path(Path(p).name)))

    # If no command line, scan the folder
    if len(files) == 0:
        files = sorted(fdm_path.glob('*.FCStd'))

    for f in files:
        try:
            process_file(f)
        except Exception as ex:
            print(f"****")
            print(f"\tAn error occurred while processing {str(f)}:")
            print(f"\t{ex}")
            traceback.print_exc()
            print(f"****")
            exceptions.append(ex)

    if exceptions:
        verb = "was" if len(exceptions) == 1 else "were"
        noun = "exception" if len(exceptions) == 1 else "exceptions"
        print(f"There {verb} {len(exceptions)} {noun}")

        assert len(exceptions) == 0
