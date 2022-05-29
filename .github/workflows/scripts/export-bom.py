#!/usr/bin/python3

import os
from platform import release
import sys
import csv

# make directory for bom html file and assets
dirName = "LumenPnP-" + sys.argv[1]
if not os.path.exists(dirName):
    os.mkdir(dirName)
    print("Directory " , dirName ,  " Created ")
else:    
    print("Directory " , dirName ,  " already exists")


# make html file that will become our BOM
f = open(dirName + "/bom_" + sys.argv[1] + ".html", "w")
f.write("""
<!DOCTYPE html>
<head>
<style>
body {
    background-color: #222;
    padding: 30px;
    font-family: helvetica;
    color: #fff
}
table {
    width: 100%;
}
h1 {
    color:white;
}
th, td {
    padding: 10px;
    text-align: left;
    border-bottom: 2px solid #fff
}
a {
    color:goldenrod;
}

img {
    width: 150px;
}

tr:hover {
    background-color: grey;
}
</style>
</head>
<body>
<h1>
""")

#write page title based on script
f.write("LumenPnP BOM " + sys.argv[1])

#write the beginning of table, and row for header
f.write("</h1><a href='https://www.github.com/index-machines/index/releases/'><h2>Download the Source Here</h2></a><table>")

with open('bom.csv') as bom:
    csv_reader = csv.reader(bom, delimiter=',')
    line_count = 0
    
    for row in csv_reader:
        column = 0
        f.write("<tr>")

        if line_count == 0: #if header row, just print what's there
            while column < len(row):
                f.write("<th>" + row[column] + "</th>")
                column += 1
        else: #if content row
            while column < len(row):

                # handling images
                if column == 1 and row[4] != "FDM":
                    f.write("<th><img src='" + row[column] + "' /></th>")
                elif column == 1 and row[4] == "FDM":
                    f.write("<th><img src='img/" + row[0] + ".png' /></th>")

                # handling links
                elif (column == 6 or column == 7) and row[4] != "FDM" and row[column] != "":
                    f.write("<th><a href='" + row[column] + "' />Link</a></th>")
                # all other cells
                else:
                    f.write("<th>" + row[column] + "</th>")
                column += 1
        f.write("</tr>")
        line_count += 1

f.write("</table></body></html>")


f.close()