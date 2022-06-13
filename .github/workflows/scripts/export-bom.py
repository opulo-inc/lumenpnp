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
    position: relative;
    border-collapse: collapse;
}
h1 {
    color:white;
}
.optional {
    background-color: #430;
}
tr.titlerow th {
    background-color: goldenrod;
    position: sticky;
    top: 0;
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

#logo {
    width: 250px;
    position: absolute;
    top: 30px;
    right: 50px;
}

tr:hover {
    background-color: #444;
}
</style>
</head>
<body>
<h1>
""")

#write page title based on script
f.write("LumenPnP BOM " + sys.argv[1])

#write the beginning of table, and row for header
f.write("</h1><a href='https://www.github.com/opulo-inc/lumenpnp/releases/' target='_blank' rel='noopener noreferrer'><h2>Download the Source Here</h2></a><a href='https://www.opulo.io/' target='_blank' rel='noopener noreferrer'><img src='https://cdn.shopify.com/s/files/1/0570/4256/7355/files/opulo-white-alpha_1200x1200.png?v=1644515300' id='logo'/></a><table>")

with open('bom.csv') as bom:
    csv_reader = csv.reader(bom, delimiter=',')
    line_count = 0
    
    for row in csv_reader:
        column = 0

        if line_count == 0: #if header row, just print what's there
            f.write("<tr class='titlerow'>")
            while column < len(row):
                f.write("<th style='color:black;'>" + row[column] + "</th>")
                column += 1
        else: #if content row
            if row[6] != "":
                f.write("<tr class='optional'>")
            else:
                f.write("<tr>")

            while column < len(row):

                # handling images
                if column == 1 and row[3] != "FDM":
                    f.write("<th><img src='" + row[column] + "' /></th>")
                elif column == 1 and row[3] == "FDM":
                    f.write("<th><img src='img/" + row[0] + ".png' /></th>")

                # handling links
                elif (column == 4 or column == 5) and row[3] != "FDM" and row[column] != "":
                    f.write("<th><a href='" + row[column] + "' target='_blank' rel='noopener noreferrer'/>Link</a></th>")
                # all other cells
                else:
                    f.write("<th>" + row[column] + "</th>")
                column += 1
        f.write("</tr>")
        line_count += 1

f.write("</table></body></html>")


f.close()