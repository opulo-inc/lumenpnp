#!/usr/bin/python3

# Export BOM from FreeCad Assembly file
# Merges PARTLIST and FASTENER spreadsheet lists together

# NOTE YOU STILL HAVE TO MANUALLY UPDATE THE PARTLIST/FASTENER SPREADSHEETS
#      USING FREECAD WHEN MAKING CHANGES TO THE ASSEMBLY!

import os
import sys
import traceback
from pathlib import Path
from pprint import pprint
from typing import Dict, List, Match

import csv
from csv import DictReader

freecad_paths = [
    '/home/runner/work/index/index/squashfs-root/usr/lib',  # For CI when using AppImage
    '/usr/lib/freecad/lib/',  # For CI
    '/usr/lib/freecad-daily-python3/lib/',  # For Ubuntu
    '/usr/lib64/freecad/lib64/',  # For Fedora
    '/Applications/FreeCAD.app/Contents/Resources/lib',  # For Mac OS X
    'c:/Program Files/FreeCAD 0.18/bin/',  # For Windows
    'c:/Program Files/FreeCAD 0.19/bin/',  # For Windows
    'C:/Program Files/FreeCAD 0.19/bin/Lib',
]

for path in freecad_paths:
    if os.path.exists(path):
        print(f"Added possible FreeCAD path: {path}")
        sys.path.append(path)

# These must go after the sys.path.append code
import FreeCAD
import Spreadsheet


print('Python version:')
print(sys.version)

print('FreeCAD version:')
print(FreeCAD.Version())


def process_parts_list(sheet):
    # Determine the number of rows in sheet (why is there no API function for this?)
    try:
        for row in range(1, 999):
            dummyread = sheet.get("A"+str(row))
    except ValueError as e:
        total_rows = row

    # Determine the number of columns in sheet (why is there no API function for this?)
    try:
        for col in range(0, 999):
            dummyread = sheet.get(str(chr(ord('A')+col)+"1"))
    except ValueError as e:
        total_columns = col

    #print(f"columns={total_columns} rows={total_rows}")

    # Extract the column positions for the fields we are interested in
    for c in range(ord('A'), ord('A')+total_columns):
        col_heading = sheet.get(str(chr(c)+'1'))
        if col_heading == "QTY":
            col_quantity = c
        elif col_heading == "DESCRIPTION":
            col_description = c
        elif col_heading == "SUPPLIER":
            col_supplier = c
        elif col_heading == "(FILENAME)":
            col_filename = c
        elif col_heading == "POS":
            col_pos = c
        elif col_heading == "IDENTNO":
            col_identno = c
        elif col_heading == "SUPP.IDENTNO":
            col_supp_identno = c
        elif col_heading == "SUPP.DESCRIPTION":
            col_supp_description = c
        else:
            print(f"Ignoring column={col_heading}")

    # Extract the data into list/dictionary
    parts = []
    for r in range(2, total_rows):
        description = sheet.get(str(chr(col_description)+str(r)))
        if description == "*":
            description = ""

        supplier = sheet.get(str(chr(col_supplier)+str(r)))
        if supplier == "*":
            supplier = ""

        parts.append({
            "quantity": sheet.get(str(chr(col_quantity)+str(r))),
            # "description":description,
            # "supplier":supplier,
            "filename": sheet.get(str(chr(col_filename)+str(r)))
        })

    return parts


def process_fasteners_list(sheet):
    # Determine the number of rows in sheet (why is there no API function for this?)
    try:
        for row in range(1, 999):
            dummyread = sheet.get("A"+str(row))
    except ValueError as e:
        total_rows = row

    # Determine the number of columns in sheet (why is there no API function for this?)
    try:
        for col in range(0, 999):
            dummyread = sheet.get(str(chr(ord('A')+col)+"1"))
    except ValueError as e:
        total_columns = col

    #print(f"columns={total_columns} rows={total_rows}")

    # Extract the column positions for the fields we are interested in
    for c in range(ord('A'), ord('A')+total_columns):
        col_heading = sheet.get(str(chr(c)+'1'))

        if col_heading == "Qty":
            col_quantity = c
        elif col_heading == "Type":
            col_description = c
        else:
            print(f"Ignoring column={col_heading}")

    # Extract the data into list/dictionary
    parts = []
    for r in range(2, total_rows):
        description = sheet.get(str(chr(col_description)+str(r)))
        parts.append({
            "quantity": sheet.get(str(chr(col_quantity)+str(r))),
            "description": description,
            # "supplier":"",
            # "filename":""
        })

    return parts


def generate_bom(part_list: List, fasteners_list: List, catalog:Dict):
    bom = []

    # Include all "AlwaysInclude" flagged items from catalog
    for key in catalog.keys():
        item=catalog[key]
        if 'AlwaysInclude' in item:
            if item['AlwaysInclude']!='':
                item['Quantity'] = 1
                bom.append(item)

    # Generate a list of dict's containing each item in the BOM
    # we cross check the parts against the catalog and merge the data together
    for p in part_list:
        pn = p['filename'][:8]
        c = {}
        if pn in catalog:
            c = catalog[pn]
        else:
            print("Missing item from catalog", pn)

        c['Part Number'] = pn
        c['Quantity'] = p['quantity']

        if pn.startswith("FDM"):
            c['3d Model Filename'] = pn+'.stl'
            c['FreeCad File'] = p['filename']

        bom.append(c)

    # Repeat for the fasteners_list
    for p in fasteners_list:
        c = {}
        
        for k in catalog.keys():
            row=catalog[k]
            if row['Part Name']==str(p['description']):
                c = row
                break

        c['Quantity'] = p['quantity']
        # Supply part name if it wasn't found in the catalog
        if 'Part Name' not in c: 
            c['Part Name'] = p['description']
            print("WARNING: Catalog missing entry for ",p)

        bom.append(c)

    return bom


def output_bom(filename: str, bom: List):
    print(f"Output file={filename}")
    f = open(filename, "w+")

    # Human readable list of column titles
    column_title_list = ["Part Number", "Quantity", "Part Name", "Comment", "Optional","Image", "3d Model Filename",
                         "FreeCad Model Filename", "Supplier", "Supplier URL", "Alt. Supplier", "Alt. Supplier URL"]
    for title in column_title_list:
        f.write('|')
        f.write(title)
    f.write('|')
    f.write('\n')

    # table markdown style
    for title in column_title_list:
        f.write('|')
        f.write('-----------')
    f.write('|')
    f.write('\n')

    # Order of keys to extract from rows in bom list
    field_list = ["Part Number", "Quantity", "Part Name", "Comment","Optional","Image URL", "3d Model Filename",
                  "FreeCad File", "Source 1", "Source 1 URL", "Source 2", "Source 2 URL"]
    for row in bom:
        for key in field_list:
            f.write('|')
            if key in row:
                value=row[key]

                if value==None:
                    value=""

                # Cast to string
                value=str(value)

                if key=="Image URL":
                    #Image URL
                    if value.startswith("http"):
                        value="<img src=\""+value+"\" width=\"256\"/>"

                else:
                    #Detect URL's and format them in markdown style
                    if value.startswith("https://"):
                        value="[Link]("+value+")"

                f.write(value)

        f.write("|\n")

    f.close()


if __name__ == '__main__':

    catalog = {}

    # Parse Parts Catalog into a nested dict
    with open(Path('..', 'LumenPnP Part Catalog.csv'), newline='') as csvfile:
        #csvreader = csv.reader(csvfile, delimiter=',', quotechar='"')
        csvreader = DictReader(csvfile)
        for row in csvreader:
            pn = row['Part Number']

            if pn in catalog:
                print("WARNING: Duplicate part number in catalog ", row)
            else:
                catalog[pn] = row

    main_assembly = Path('.').joinpath('assembly.FCStd')
    print("Opening FreeCad file", main_assembly)

    doc = FreeCAD.open(str(main_assembly.absolute()))

    # Ideally we would rerun the generation of the BOM and Fasteners using code
    # similar to below, but this doesn't appear to work directly from Python
    # FreeCADGui.activateWorkbench("A2plusWorkbench")
    # FreeCADGui.runCommand('a2p_CreatePartlist',0)
    # FreeCADGui.activateWorkbench("FastenersWorkbench")
    # FreeCADGui.runCommand('FSMakeBOM',0)
    # App.getDocument('assembly').getObject('Fasteners_BOM').ViewObject.doubleClicked()

    # Get the PARTSLIST
    part_list = []
    sheet = doc.getObject('_PARTSLIST_')
    if sheet.isDerivedFrom("Spreadsheet::Sheet"):
        sheet.recompute()
        if sheet.isValid():
            part_list = process_parts_list(sheet)

    # Repeat for FASTENERS
    fasteners_list = []
    fasteners = doc.getObject('Fasteners_BOM')
    if fasteners.isDerivedFrom("Spreadsheet::Sheet"):
        fasteners.recompute()
        if fasteners.isValid():
            fasteners_list = (process_fasteners_list(fasteners))

    FreeCAD.closeDocument(doc.Name)

    # Sort by filename+description

    # Check for missing files/bad paths
    for p in part_list:
        filename = p['filename']
        if filename != "":
            if filename.startswith('FDM-'):
                path = Path("FDM", p['filename'])
            elif filename.startswith('OTS-'):
                path = Path("OTS", p['filename'])
            elif filename.startswith('CSM-'):
                path = Path("CSM", p['filename'])
            elif filename.startswith('PCB-'):
                path = Path("PCB", p['filename'])
            else:
                path = Path("FST", p['filename'])
            if path.is_file() == False:
                print("Missing", path)

    bom = generate_bom(part_list, fasteners_list, catalog)

    # Spit out catalog entries which are not used as a warning
    used_parts=[]
    for p in bom:
        used_parts.append(p['Part Number'])

    unused_part_list = list(set(list(catalog.keys())).difference(used_parts))
    print("Unused catalog parts:",unused_part_list)

    # Sort based on part number
    sorted_bom = sorted(bom, key=lambda x: x["Part Number"])

    # Generate the MD file
    output_bom(Path('.').joinpath('index_bom.md'), sorted_bom)


