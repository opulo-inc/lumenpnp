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
Alright, time to get the parts we need to print! Read the information about picking your Build Number on the "LumenPnP Assembly" page to find out what version of parts to print. You can find the parts you need on the [Releases Page](https://github.com/index-machines/index/releases), and look at the attached Assets at the bottom of the release. Click and download `3d-prints.zip` to get the STL files for your machine. If you are building your kit, **make sure you know your Hardware Version before printing parts**.

## Calibration Print

**Before printing the parts, print the calibration print**. This is [FDM-8000](https://github.com/index-machines/index/releases/latest/download/FDM-8000_corndog.stl), colloquially referred to as ["the corndog."](https://github.com/index-machines/index/releases/latest/download/FDM-8000_corndog.stl) To ensure you have your printer dialed into the tolerances we expect in our designs, this part has every feature in the printable parts with a tolerance requirement. After printing, you can check fit of fasteners and aluminum extrusion to ensure the parts you print will all fit as expected.

{{< container-image path="images/corndog.jpg" alt="Corndog" >}}

You can test the Corndog's fit using M3 and M5 bolts, along with M3 and M5 nuts. Check to see that the press-fit nut hexagonal voids and drop-in vertical nut slots fit M3 and M5 nuts correctly, that M3 and M5 bolts can easily pass through and countersink through their holes. The two holes inside the lock icon should be a good tap-thread fit. You should be able to thread M3 and M5 bolts into those holes with a bit of effort, but it should grip well into the print. You can also check the fit of a 20mm x 20mm aluminum extrusion fit into the square hole on the end of the print.

## Printing The Parts

### How Many Of Each?
You can find out how many of each part to print in `index_bom.md`, which is also an Asset of the release with your Build Number. You can view this file using an online Markdown viewer [like this one](https://dillinger.io/). Select "Import From" -> "Markdown File" and select `index_bom.md`. The Filename column will tell you which part to print, and the Quantity column will tell you how many to print. Only pay attention to Filenames that start with `FDM-`, as these are the ones in the zip file you downloaded earlier. The other items in this table are a list of all the other fasteners, hardware, and off the shelf parts used in the machine's mechanical build. All of these have been provided in the kit.

{{< container-image path="images/IMG_0637.JPG" alt="Belt Tension Arm Parts" >}}

### What Material?
Development with the machine is done with PLA, but folks have had great success printing these parts in PETG as well.

For colors, there is only one specific requirement: two parts must be printed in white/natural material: `FDM-0015 Down Light Mount` and `FDM-0019 Up Light Mount`. These parts have a thin section where the print acts as a diffuser for the ring lights. A dark color would prevent light from shining through. We also suggest that you print `FDM-0024 Nozzle Holder` in a light color as well, as it helps when setting your toolchanger position down the road.

We recommend printing the Z gantries (`FDM-0017` and `FDM-0039`) in a dark color. This helps isolate the illuminated part on the nozzle tip, and reflects less light. If you choose to print them in a light color anyway, we've found a bit of blue painter's tape applied to the bottom side of the parts works just fine.

### What Settings To Use?
Of course, every printer is different, but the settings below are a rough outline of where you should be in terms of part strength. It's also important to note that **these parts are designed for printers with a 0.4mm nozzle.** Using a larger nozzle diameter can result in some features not resolving correctly, or parts not fitting as designed.

#### Default Settings

- 3 shells
- 20% infill
- 5 Top/Bottom layers
- 0.2mm layer height
- Use Support

#### Gantry Settings

- 4 shells
- 30% infill
- 5 Top/Bottom layers
- 0.2mm layer height
- Use Support

Gantry Settings should be used for

- `FDM-0005` (Y-gantry)
- `FDM-0008` (Y-gantry Support)
- `FDM-0009` (Roller-Spacer)
- `FDM-0011` (X-gantry Front)
- `FDM-0012` (X-gantry Back)
- `FDM-0013` (X-Idler Mount)
- `FDM-0017` (Z-gantry Left)
- `FDM-0039` (Z-gantry Right)

### 9000 Series Parts?
There are some parts in the project that have a part number in the 9000s. These prints are totally optional, and not necessary to print.
