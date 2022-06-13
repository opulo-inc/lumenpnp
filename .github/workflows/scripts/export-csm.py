#!/usr/bin/python3
import math
import os
import sys
import traceback
from pathlib import Path
from typing import List
import time

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

# Must be after sys.path.append above...
import FreeCAD
import importDXF

print('Python version:',sys.version,'FreeCAD version:',FreeCAD.Version())

def process_csm_file(cad_file: Path, output_folder: Path):
    print("Processing " + cad_file.name)
    doc = FreeCAD.open(str(cad_file.absolute()))

    name = cad_file.name[:-6]

    # name_options = [obj.String for obj in doc.Objects if
    #                 obj.isDerivedFrom("Part::Part2DObject") and obj.Label == "PN"]
    # if name_options:
    #     name = name_options[0]
    # else:
    #     # If there is no part number embossed throw error
    #     raise ValueError("Part " + cad_file.name + " doesn't have a ShapeString called PN for part number emboss")

    output_file=os.path.join(output_folder,name+'.dxf')
    print("Output file "+output_file)
    #output_file=os.path.join(output_folder,os.path.splitext(os.path.basename(cad_file))[0]+'.dxf')

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

    __objs__=[]
    __objs__.append(body)
    importDXF.export(__objs__,output_file)


if __name__ == '__main__':
    # Create output folder if needed
    output_directory = Path('csm-export')
    output_directory.mkdir(parents=True, exist_ok=True)

    csm_path = Path('../../../pnp/cad/CSM')

    files = sorted(csm_path.glob('*.FCStd'))

    exceptions: List[Exception] = []

    for f in files:
        try:
            process_csm_file(f, output_directory)
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
