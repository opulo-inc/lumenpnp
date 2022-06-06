---
title: "Left Side"
linkTitle: "Left Side"
weight: 10
resources:
- src: "**.png"
- src: "**.jpg"
description: >
  Assembling the left side of the machine
---

Alright, time to get into the build! First, we're going to build up the left side of the machine.

## Belt Tension Arm

| Qty | Part                        |
|----:|-----------------------------|
| 1   | M3 Hex Nut                  |
| 1   | M3x16 machine screw         |
| 1   | M3 Cap Nut                  |
| 1   | M5x25 machine screw         |
| 1   | M5 Nyloc Hex Nut            |
| 1   | M5x40 machine screw         |
| 1   | M5 Hex Nut                  |
| 1   | GT2 Pulley Idler            |
| 1   | FDM-0037 (Belt Tension Arm) |



{{< container-image path="images/IMG_20210826_150501-web.jpg" alt="Belt Tension Arm Parts" >}}

1. Insert an M3 Hex Nut into its slot on the back of a {{<tooltip "Belt Tension Arm" "FDM-0037">}}.
  {{< container-image path="images/IMG_20210826_150533-web.jpg" alt="Inserted M3 Hex Nut" >}}

2. Insert the M3x16mm Machine Screw through the front hole in the {{<tooltip "Belt Tension Arm" "FDM-0037">}} and then tighten.
  {{< container-image path="images/Left-Side-Step-2.png" alt="M3 Screw and M3 Hex Nut installed" >}}

3. Thread an M3 Cap Nut on the end of the M3x16mm Machine Screw.
  {{< container-image path="images/IMG_20210826_150638-web.jpg" alt="M3 Screw, M3 Nut, and M3 Cap Nut installed" >}}

4. Insert the M5x25mm Machine Screw through the hole in the top of the {{<tooltip "Belt Tension Arm" "FDM-0037">}} so that it passes through a GT2 Pulley Idler.
  {{< container-image path="images/Left-Side-Step-4.png" alt="M5 screw and GT2 Pulley Idler positioned" >}}

5. Add an M5 Nyloc Hex Nut on the bottom of the {{<tooltip "Belt Tension Arm" "FDM-0037">}} and tighten. Make sure the idler can still spin freely.
  {{< container-image path="images/IMG_20210826_150728-webreverse.jpg" alt="M5 Screw, GT2 Idler Pulley, and M5 Nut installed" >}}

6. Insert the M5 Nyloc Hex Nut into the recess for a hex nut on the bottom of one of the idler mount arms on the {{<tooltip "Front Left Leg" "FDM-0001">}}.
  {{< container-image path="images/Left-Side-Step-6.png" alt="M5 Nyloc Hed Nut positioned in Front Left Leg" >}}

7. Insert completed {{<tooltip "Belt Tension Arm "FDM-0037>}} assembly between the arms on the {{<tooltip "Front Left Leg" "FDM-0001">}}, with the screw head of the M5x25mm facing up.
  {{< container-image path="images/Left-Side-Step-7.png" alt="Belt Tensioner Arm" >}}

8. Insert the M5x40mm Machine Screw through the hole in the top so that it passes through the {{<tooltip "Belt Tension Arm" "FDM-0037">}} and tightens into the M5 Nyloc Hex Nut. Do not over-tighten, and ensure you can still pivot the tension arm.
  {{< container-image path="images/Left-Side-Step-8.png" alt="M5x40mm screw inserted into Idler and Belt Tensioner Arm" >}}
  {{< container-image path="images/IMG_20210826_151445-web.jpg" alt="Idler and Belt Tension Arm installed on Leg" >}}

## Assembly

| Qty | Part                               |
|----:|------------------------------------|
|   1 | FDM-0001 (Front Left Leg)          |
|   1 | FDM-0003 (Back Left Leg)           |
|   2 | Aluminum extrusions                |
|   6 | M5 T-slot nut                      |
|   6 | M5x10 machine screw                |
|   1 | NEMA17 Stepper motor               |
|   1 | GT2 Pulley (with grub screws)      |
|   6 | M3x8 machine screw                 |
|   1 | Limit switch PCB                   |
|   2 | M5x25 machine screw                |
|   1 | FDM-0007 (Frame Umbilical Mount)   |
|   1 | FDM-0046 (Umbilical Swivel Part 1) |
|   1 | FDM-0047 (Umbilical Swivel Part 2) |
|   1 | M5x40 machine screw                |

9. Take the {{<tooltip "Front Left Leg" "FDM-0001">}} and insert the v-slot extrusions into the two square holes designed to take this part. Ensure that the extrusion comes to the end of the holes in which they're inserted. If you have a hard time getting the extrusion into the slots, gently slide them into place using some taps from a mallet.
  {{< container-image path="images/Left-Side-Step-9.png" alt="Inserting the V-slot Extrusions into the Front Left Leg" >}}
  {{< container-image path="images/extrusion_fully_inserted.png" >}}

10. Take the {{<tooltip "Back Left Leg" "FDM-0003">}} and place it onto two v-slot extrusions at the end opposite the {{<tooltip "Front Left Leg" "FDM-0001">}}. Your progress should look like the image below.
  {{< container-image path="images/Left-Side-Step-10.png" alt="Inserting the V-slot Extrusions into the Back Left Leg" >}}
  {{< container-image path="images/Left-Side-Step-10-2.png" alt="Inserting the V-slot Extrusions into the Front Left Leg Result 2" >}}

11. On the top rail, drop in and position a slot nut underneath the hole in the top of each leg and screw a M5x10mm machine screw into the nut.
  {{< container-image path="images/Left-Side-Step-11-2.png" alt="Securing the V-slot Extrusions to the top of the Front Left Leg" >}}
  {{< container-image path="images/Left-Side-Step-11-3.png" alt="Securing the V-slot Extrusions to the top of the Back Left Leg" >}}
  {{< container-image path="images/top_screws.png" alt="Top screws securing V-slot Extrusions" >}}

12. On the bottom rail, the outer side has three exposed holes for machine screws (one on the {{<tooltip "Back Left Leg" "FDM-0003">}}, two on the {{<tooltip "Front Left Leg" "FDM-0001">}}). For each, drop in and position a slot nut under it and screw a M5x10mm machine screw into it.
  {{< container-image path="images/Left-Side-Step-12.png" alt="Securing the V-slot Extrusions to the Side of the Front Left Leg" >}}
  {{< container-image path="images/Left-Side-Step-12-2.png" alt="Securing the V-slot Extrusions to the Side of the Back Left Leg" >}}
  {{< container-image path="images/outer_screws.png" alt="All three screw locations for securing the V-slot Extrusions to the Front Left Leg and the Back Left Leg" >}}

13. On the bottom rail, the inner side has one exposed hole for a machine screw on the {{<tooltip "Back Left Leg" "FDM-0003">}}. Drop in and position a slot nut under it and screw a M5x10mm machine screw into it.
  {{< container-image path="images/Left-Side-Step-13.png" alt="Securing the Bottom V-slot Extrusion to the top of the Back Left Leg" >}}
  {{< container-image path="images/inner_screws.png" alt="Securing the Bottom V-slot Extrusion to the top of the Back Left Leg alternate view" >}}

14. Slide the GT2 Pulley onto the the motor shaft of a NEMA17 stepper motor with the set screw side facing the motor body. Align the pulley so that the end is roughly flush with the end of motor shaft, then tighten one of the set screws on the pulley into the flat side of the motor shaft. Tighten the second set screw as well.
  {{< container-image path="images/Left-Side-Step-14.png" alt="Attaching the GT2 Timing Pulley to the NEMA17 stepper motor" >}}

15. Mount the NEMA17 stepper motor to the {{<tooltip "Back Left Leg" "FDM-0003">}}. Attach it using four M3x8mm screws, ensuring that the connector is facing inwards towards the zip tie loops as dictated in the picture.
  {{< container-image path="images/Left-Side-Step-15.png" alt="Mounting the Left Y-axis NEMA17 stepper motor to the Back Left Leg" >}}
  {{< container-image path="images/Left-Side-Step-15-2-MANUAL.png" alt="Orienting Left Y-axis NEMA17 stepper motor with the connector facing inwards" >}}

16. Mount one of the three limit switches to the {{<tooltip "Front Left Leg" "FDM-0001">}} as shown in the image. Use two M3x8mm screws and tap them directly into the print.
    {{< container-image path="images/Left-Side-Step-16.png" alt="Attaching the Y-axis limit switch" >}}

17. Next, we'll mount the {{<tooltip "Frame Umbilical Mount" "FDM-0007">}}. Using two M5x25mm screws, attach it to the {{<tooltip "Front Left Leg" "FDM-0001">}} as shown, threading directly into the part.
  {{< container-image path="images/Screen Shot 2022-02-04 at 2.43.16 PM.PNG" alt="Attaching the Frame Umbilical Mount to the Front Left Leg" >}}

18. Lastly, we'll assemble the umbilical swivel. {{<tooltip "Swivel Part 1 and Swivel Part 2" "FDM-0046 and FDM-0047">}} fit together as shown below, and are secured in place with a M5x40mm screw and an M5 nut. Tighten so there's no play in the fit, but the two parts can swivel easily. This part helps keep the X gantry umbilical suspended over the build area. Set it aside for now.
  {{< container-image path="images/Screen Shot 2022-02-04 at 2.45.39 PM.PNG" >}}
