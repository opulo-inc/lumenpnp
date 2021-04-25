---
title: "X Gantry"
linkTitle: "X Gantry"
weight: 80
description: >
  X Gantry Assembly
---

## Necessary Components & Tools

Collect the necessary items to complete the X Gantry assembly. These are:

* 1x X Gantry Front (FDM-0011-00_x-gantry-front)
* 1x X Gantry Back (FDM-0012-00_x-gantry-back)
* 1x Z Gantry Left (FDM-0017-00_z-gantry-left)
* 1x Mirrored Z Gantry Left (FDM-0017-00_z-gantry-left, but in FreeCAD perform a Part Mirror around the YZ plane)
* 2x Roller Spacers (FDM-0009-00_roller-spacer)
* 1x ... (Z axis roller spacer)
* 2x Belt Clamp (FDM-0025-00_belt-clamp)
* 1x NEMA 17 Stepper Motor (can use a pancake motor)
* 1x GT2 Pulley (5mm Bore) 
* 1x GT2 Idler (5mm Bore)
* 1x GT2 Belt
* 7x M3x12mm Machine Screw
* 8x M3x6mm Machine Screw
* 6x M3x8mm Machine Screw
* 1x M5x30mm Machine Screw
* 2x M5x45mm Machine Screw
* 3x M5 Nylon Lock Nut
* 3x V-Slot Rollers (with bearings, 5mm Bore, 24mm diameter, 10.23mm outer width)
* 7x M3 Nut
* 7x M5 Nut
* 2x Linear Rail - 100mm
* 1x Limit Switch
* 2.5mm Allen Key or Hex Screwdriver
* 4mm Allen Key or Hex Screwdriver
* 3.3V power source

## Assembly

1. Insert a M5 Hex Nut into one of the hex nut locations on the X gantry back and push into the 3d print. 
{{< container-image path="images/325f44ff6fdf60ca.png" alt="" >}}

2. Pull the hex nut fully into location by screwing a M5x10mm machine screw into it from the opposite side of the X gantry back. Then unscrew the M5x10mm machine screw.
3. Repeat steps 1-2 for the remaining five M5 nut locations.
{{< container-image path="images/2c9c77ae6eb329da.png" alt="" >}}

4. Insert a M3 Hex Nut vertically into the slot near the adjustment slot on the X gantry back.
{{< container-image path="images/95d73b206471936b.png" alt="" >}}

5. Tighten an M3 x 12mm screw into the Hex Nut installed in the previous step.
{{< container-image path="images/c8af1569e2073d4e.png" alt="" >}}

6. Insert an M3 Hex Nut into one of the hex nut locations on the X gantry front and push into the 3d print.
{{< container-image path="images/ee20a1a503ef317d.png" alt="" >}}

7. Pull the hex nut fully into location by screwing a M3x12mm machine screw into it from the opposite side of the X gantry back. Then unscrew the M3x12mm machine screw.
8. Repeat steps 6-7 for the remaining five M3 nut locations.
{{< container-image path="images/85880d188ddf93e6.png" alt="" >}}

9. Insert a M5 nut into the M5 nut location at the bottom of the X front gantry
{{< container-image path="images/2078c7c7038c887b.png" alt="" >}}

10. Insert a M5x45mm machine screw into each of the top two holes on the X Gantry Front which have a printed roller spacer.
{{< container-image path="images/e2108903e6911312.png" alt="" >}}

11. Onto each of the two machine screws placed in the previous step, place a V-slot roller
{{< container-image path="images/6e29562409ce933b.png" alt="" >}}
12. Place the X gantry rear onto the two machine screws
{{< container-image path="images/79404db3c84d18c8.png" alt="" >}}
13. Add a M5 nylon lock onto each of the two machine screws
{{< container-image path="images/a1d23a295e5da862.png" alt="" >}}
14. Tighten the nylon lock nuts on the machine screws so that the two sides are snug against the V-slot rollers.
15. Place a Linear Rail onto the X gantry front and line up the holes with the three holes on the left.
{{< container-image path="images/b5177bd2566001c2.png" alt="" >}}
16. Place an M3x12mm machine screw into each of the holes and tighten to attach the linear rail.
{{< container-image path="images/d6fafb744f752b33.png" alt="" >}}
17. Repeat steps 15-16 for the right side linear rail.
{{< container-image path="images/99579f4387f414d2.png" alt="" >}}
18. Place the NEMA 17 motor so the shaft runs through the X gantry front and emerges on the same side as the linear rails.
{{< container-image path="images/d39d92ce5fe2b6e2.png" alt="" >}}
19. Fasten the NEMA17 motor to the X gantry front using four M3x8mm machine screws.
{{< container-image path="images/86b55f93f3d8b3fb.png" alt="" >}}
20. At the top left of the assembly front, place a limit switch PCB
{{< container-image path="images/9b29218162091282.png" alt="" >}}
21. Fasten the limit switch PCB with two M3x8mm screws.
{{< container-image path="images/34ece53ad49d13c7.png" alt="" >}}
22. Place a M5x30mm machine screw through the GT2 idler, the z axis roller spacer and into the X gantry front.
{{< container-image path="images/7b28d6f03444095.png" alt="" >}}
23. Secure this machine screw to the gantry by tightening it into M5 nut inserted in step 9.
24. Place the GT2 Pulley onto the motor shaft and use some belt to adjust the height to match the idler.
{{< container-image path="images/b6d6d1bd686691b.png" alt="" >}}
25. Tighten the pulley into place using the grub screws.
26. To the left linear rail attach the Z Gantry Left using four M3x6mm Machine Screws.
{{< container-image path="images/z_gantry_left_attachment.png" alt="" >}}
27. To the right linear rail attach the mirrored Z Gantry Left using four M3x6mm Machine Screws.
{{< container-image path="images/z_gantry_right_attachment.png" alt="" >}}
28. Ensure the 3.3V power supply is off.
29. Connect the black wire from the limit switch to the 3.3V power source ground or negative terminal
30. Connect the red wire from the limit switch to the 3.3V power source positive terminal.
31. Power on the 3.3V power supply
32. Move the right side gantry to the top so that it triggers the limit switch (which illuminates an LED)
33. Move the left side gantry to the bottom extent of travel.
34. Take the GT2 belt and insert one end so that just under half the teeth on the top of the left side gantry are gripping the teeth on the belt.
35. Pull the belt towards the motor pulley and then around the pulley
36. Ensure the belt is taut and insert into the teeth on the right side gantry (mirrored Z Gantry Left)
37. Continue to direct the belt down towards the idler and around
38. Direct the belt back to the left gantry and pull taught.
39. Place over the teeth at the side of the gantry and determine a cut location on the belt
40. Cut the belt so that you can insert into the teeth of the gantry part
41. Insert the teeth into the gantry part ensuring that the belt it taut

