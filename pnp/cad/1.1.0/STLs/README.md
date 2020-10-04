# Print Settings
*These STL Files are designed to print support-free with specific settings. If other settings are preffered please use the Fusion Archive or STEP files to modify the printing parameters for best results.*

All frame parts should be printed with these settings:

| Parameter         | Value  |
| ----------------- | ------ |
| Layer Height      | 0.2mm  |
| Top/Bottom Layers | 5      |
| Perimeter Count   | 3+     |
| Extrusion Width   | 0.45mm |
| Infill            | 10%+   |

## Notes

All print files should be oriented with the correct face on the bed.
`belt-clamp.stl` may require a brim depending on your printer's abilites.
`back-left-leg.stl` and `front-left-leg.stl` are the same file.  You can just choose one and print it twice.  Also you should use the following parameters in Cura slicer ( or the equivalent settings in any slicer ) to make sure you capture the reinforcement geometry inside the motor mounts.

- "Experimental" -> "Minimum Polygon Circumference" to 0.5mm 
- "Experimental"-> "Maximum Resolution" to 0.1mm 
- "Experimental" -> "Maximum Travel Resolution" to 0.2mm


Thanks to [gregsaun's cheat-sheet](https://github.com/gregsaun/maker_cheatsheet) for many of the formulas and methods used!
