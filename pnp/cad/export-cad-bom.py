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
from typing import List, Match

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
            dummyread=sheet.get("A"+str(row))
    except ValueError as e:
        total_rows=row


    # Determine the number of columns in sheet (why is there no API function for this?)
    try:
        for col in range(0, 999):
            dummyread=sheet.get(str(chr(ord('A')+col)+"1"))
    except ValueError as e:
        total_columns=col

    print(f"columns={total_columns} rows={total_rows}")

    # Extract the column positions for the fields we are interested in
    for c in range(ord('A'), ord('A')+total_columns):
        col_heading=sheet.get(str(chr(c)+'1'))
        
        if col_heading=="QTY":
            col_quantity=c
        elif col_heading=="DESCRIPTION":
            col_description=c
        elif col_heading=="SUPPLIER":
            col_supplier=c
        elif col_heading=="(FILENAME)":
            col_filename=c
        elif col_heading=="POS":
            col_pos=c
        elif col_heading=="IDENTNO":
            col_identno=c
        elif col_heading=="SUPP.IDENTNO":
            col_supp_identno=c
        elif col_heading=="SUPP.DESCRIPTION":
            col_supp_description=c
        else:
            print(f"Ignoring column={col_heading}")

    # Extract the data into list/dictionary
    parts=[]
    for r in range(2, total_rows):
        description=sheet.get(str(chr(col_description)+str(r)))
        if description=="*":
            description=""

        supplier=sheet.get(str(chr(col_supplier)+str(r)))
        if supplier=="*":
            supplier=""

        parts.append( { 
            "quantity":sheet.get(str(chr(col_quantity)+str(r))),
            "description":description,
            "supplier":supplier,
            "filename":sheet.get(str(chr(col_filename)+str(r)))
            } )

    return parts



def process_fasteners_list(sheet):
    # Determine the number of rows in sheet (why is there no API function for this?)
    try:
        for row in range(1, 999):
            dummyread=sheet.get("A"+str(row))
    except ValueError as e:
        total_rows=row


    # Determine the number of columns in sheet (why is there no API function for this?)
    try:
        for col in range(0, 999):
            dummyread=sheet.get(str(chr(ord('A')+col)+"1"))
    except ValueError as e:
        total_columns=col

    print(f"columns={total_columns} rows={total_rows}")

    # Extract the column positions for the fields we are interested in
    for c in range(ord('A'), ord('A')+total_columns):
        col_heading=sheet.get(str(chr(c)+'1'))
        
        if col_heading=="Qty":
            col_quantity=c
        elif col_heading=="Type":
            col_description=c
        else:
            print(f"Ignoring column={col_heading}")
        

    # Extract the data into list/dictionary
    parts=[]
    for r in range(2, total_rows):
        description=sheet.get(str(chr(col_description)+str(r)))
        parts.append( { 
            "quantity":sheet.get(str(chr(col_quantity)+str(r))),
            "description":description,
            "supplier":"",
            "filename":""
            } )

    return parts

def output_part_list(filename,part_list:List):
    print(f"Output file={filename}")
    f = open(filename, "w+")

    f.write(f"|Description|Supplier|Filename|Quantity|\r\n")
    f.write(f"|-----------|--------|--------|--------|\r\n")

    for p in part_list:
        print(p)
        f.write(f"|{p['description']}|{p['supplier']}|{p['filename']}|{p['quantity']}|\n")

    f.close()

if __name__ == '__main__':
    part_list=[]

    main_assembly = Path('.').joinpath('assembly.FCStd')

    doc = FreeCAD.open(str(main_assembly.absolute()))

    # Ideally we would rerun the generation of the BOM and Fasteners using code
    # similar to below, but this doesn't appear to work directly from Python
    #FreeCADGui.activateWorkbench("A2plusWorkbench")
    #FreeCADGui.runCommand('a2p_CreatePartlist',0)
    #FreeCADGui.activateWorkbench("FastenersWorkbench")
    #FreeCADGui.runCommand('FSMakeBOM',0)
    #App.getDocument('assembly').getObject('Fasteners_BOM').ViewObject.doubleClicked()

    # Get the PARTSLIST
    sheet=doc.getObject('_PARTSLIST_')
    if sheet.isDerivedFrom("Spreadsheet::Sheet"):
        sheet.recompute()   
        if sheet.isValid():
            part_list.extend(process_parts_list(sheet))


    # Repeat for FASTENERS
    fasteners=doc.getObject('Fasteners_BOM')
    if fasteners.isDerivedFrom("Spreadsheet::Sheet"):
        fasteners.recompute()   
        if fasteners.isValid():
            part_list.extend(process_fasteners_list(fasteners))


    FreeCAD.closeDocument(doc.Name)   

    # Sort by filename+description
    sorted_part_list = sorted(part_list, key=lambda x: x["filename"]+x["description"] )

    # Check for missing files/bad paths
    for p in part_list:
        filename=p['filename']
        if filename!="":
            if filename.startswith('FDM-'):
                path = Path("FDM",p['filename'])
            elif filename.startswith('OTS-'):
                path = Path("OTS",p['filename'])
            elif filename.startswith('CSM-'):
                path = Path("CSM",p['filename'])
            elif filename.startswith('PCB-'):
                path = Path("PCB",p['filename'])
            else:
                path = Path("FST",p['filename'])
            if path.is_file()==False:
                print("Missing",path)

    # Generate the MD file
    output_part_list(Path('.').joinpath('index_bom.md'),sorted_part_list)
 