---
title: "Printing Parts"
linkTitle: "Printing Parts"
weight: 5
resources:
- src: "**.png"
- src: "**.jpg"
description: >
  Printing all the parts necessary for the build
---

## Getting The Parts
Alright, time to get the parts we need to print! You can find the parts you need on the [Releases Page](https://github.com/index-machines/index/releases). Scroll down to the release with your machine's Build Number, and look at the attached Assets at the bottom of the release. Click and download `3d-prints.zip` to get the STL files for your machine.

## Calibration Print
Before printing the parts, **print the calibration print**. This is FDM-8000, colloquially refered to as "the corndog." To ensure you have your printer dialed into the tolerances we expect in our designs, this part has every feature in the printable parts with a tolerance requirement. After printing, you can check fit of fasteners and aluminum extrusion to ensure the parts you print will all fit as expected.

## Printing The Parts
### How Many Of Each?
You can find out how many of each part to print in `index_bom.md`, which is also an Asset of the release with your Build Number. You can view this file using an online Markdown viewer [like this one](https://dillinger.io/). Select "Import From" -> "Markdown File" and select `index_bom.md`. The Filename column will tell you which part to print, and the Quantity column will tell you how many to print. Only pay attention to Filenames that start with "FDM-", as these are the ones in the zip file you downloaded earlier. The other items in this table are a list of all the other fasteners, hardware, and off the shelf parts used in the machine's mechanical build. All of these have been provided in the kit.

{{< container-image path="images/IMG_0637.JPG" alt="Belt Tension Arm Parts" >}}

### What Material?
Development with the machine is done with PLA, but folks have had great success printing these parts in PETG as well. 

For colors, there is only one specific requirement: two parts must be printed in white/natural material: `FDM-0015 Down Light Mount` and `FDM-0019 Up Light Mount`. These parts have a thin section where the print acts as a diffusor for the ring lights. A dark color would prevent light from shining through.

We recommend printing the Z gantries (`FDM-0017` and `FDM-0039`) in a dark color. This helps isolate the illumanted part on the nozzle tip, and reflects less light. If you choose to print them in a light color anyway, we've found a bit of blue painter's tape applied to the bottom side of the parts works just fine.

### What Settings To Use?
Of course, every printer is different, but the settings below are a rough outline of where you should be in terms of part strength. 

#### Default Settings
- 3 shells
- 20% infill
- 5 Top/Bottom layers

#### Gantry Settings
- 4 shells
- 30% infill
- 5 Top/Bottom layers

(This includes the front and back of the X gantry, and the Y gantry and the Y gantry support prints)



