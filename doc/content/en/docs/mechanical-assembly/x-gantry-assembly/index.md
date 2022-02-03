---
title: "X Gantry Assembly"
linkTitle: "X Gantry Assembly"
weight: 40
description: >
  Assembling the X gantry
---

Alright, the last major bit of assembly! Once this is done, the majority of the machine's structure is built.



### Assembly

1. We'll start with the back X gantry print. Insert M5 Hex Nuts into all four of the hex nut locations on the X gantry back and push into the 3d print. 

{{< container-image path="images/Screen Shot 2021-12-29 at 3.56.48 PM.png" alt="" >}}

2. Pull the hex nuts fully into location by screwing a M5x10mm machine screw into them from the opposite side of the X gantry back. Then unscrew the M5x10mm machine screw.

3. Insert two M3 Hex Nuts vertically into the two slots near each side of the print. Insert to more M3 nuts into the two horizontal slots near the bottom edge of the print.

{{< container-image path="images/Screen Shot 2021-12-29 at 3.57.16 PM.png" alt="" >}}

4. Now, onto the front print of the X gantry. Insert M3 Hex Nuts into the six hex nut locations on the X gantry front and push into the 3d print. Also press two M3 nuts into the vertical slots in the back side of the print.

{{< container-image path="images/Screen Shot 2021-12-29 at 5.23.35 PM.png" alt="" >}}
{{< container-image path="images/Screen Shot 2021-12-29 at 7.49.13 PM.png" alt="" >}}

5. Pull the hex nuts fully into location by screwing a M3x12mm machine screw into them from the opposite side of the X gantry back. Then unscrew the M3x12mm machine screw.

6. Insert a M5 nylock nut into the recess at the bottom of the X front gantry.

{{< container-image path="images/Screen Shot 2021-12-29 at 5.25.25 PM.png" alt="" >}}

7. Insert a M5x45mm machine screw into each of the top two holes on the X Gantry Front which have a printed roller spacer. Onto each of the two machine screws, place a roller spacer, then a V-slot roller.

{{< container-image path="images/Screen Shot 2021-12-29 at 5.29.16 PM.png" alt="" >}}


12. Place the X gantry rear onto the two machine screws

{{< container-image path="images/Screen Shot 2021-12-29 at 5.30.41 PM.png" alt="" >}}

13. Add a M5 nut onto each of the two machine screws. Tighten the nylon lock nuts on the machine screws so that the two sides are snug against the V-slot rollers.

{{< container-image path="images/Screen Shot 2021-12-29 at 5.33.18 PM.png" alt="" >}}


15. Place two linear rails onto the front of the X gantry and line up each one with the arrays of three holes on the left and right side. Place three M3x12mm machine screws into each of the rails (the far ends, then one in the middle) and tighten down.

{{< container-image path="images/Screen Shot 2021-12-29 at 5.35.18 PM.png" alt="" >}}

18. Place the NEMA 17 motor so the shaft runs through the X gantry front and emerges on the same side as the linear rails. Make sure the motor's connector is pointing towards the umbilical guide as shown in the image. Fasten the NEMA17 motor to the X gantry front using four M3x8mm machine screws.

{{< container-image path="images/Screen Shot 2021-12-29 at 5.39.02 PM.png" alt="" >}}


20. At the top left of the assembly front, place a limit switch PCB. Fasten the limit switch PCB with two M3x8mm screws.

{{< container-image path="images/Screen Shot 2021-12-29 at 5.39.39 PM.png" alt="" >}}


22. Place a M5x25mm machine screw through the GT2 idler and into the X gantry front. Secure this machine screw to the gantry by tightening it into M5 nylock nut inserted into the back side. Ensure that the fit is tight and there's no wiggle in the idler, but also make sure that it can spin freely and isn't seizing from overtightening.

{{< container-image path="images/Screen Shot 2021-12-29 at 5.41.09 PM.png" alt="" >}}


23. Now it's time to mount the Z gantries. Each gantry comes in two parts. The first is a back plate that sits against the linear rail carriage, and connects to the timing belt. These will always be on your machine. Even when you swap toolheads, these will stay attached to the linear rail. On top of these mounts the tool. We'll be mounting a single Pick Head tool on the left Z gantry. Start by building the Left Z gantry subassembly. Insert four M3x10mm screws through the left z gantry, and then through the left z gantry back plate as shown in the images. Lastly, take the ???? mm strip of GT2 timing belt and slide it into the slot on the back side of the left Z gantry back plate. Ensure that it is perfectly centered along the length of the belt.

{{< container-image path="images/Screen Shot 2021-12-29 at 5.49.58 PM.png" alt="" >}}
{{< container-image path="images/Screen Shot 2021-12-29 at 5.50.11 PM.png" alt="" >}}
{{< container-image path="images/IMG_0693.JPG" alt="" >}}
{{< container-image path="images/IMG_0694.JPG" alt="" >}}
{{< container-image path="images/IMG_0697.JPG" alt="" >}}

TODO(image of gt2 in this slot)

24. Then mount the whole stack onto the left linear rail.

{{< container-image path="images/Screen Shot 2021-12-29 at 5.52.20 PM.png" alt="" >}}


24. Now we'll get the Z axis timing belt mounted. Start by placing the GT2 Pulley onto the Z motor shaft. Make sure the Z motor mounting hardware is loose and the motor is slid down in its hardware slots as far down as it can go. Feed the GT2 timing belt attached to the left Z carriage around the idler and the pulley. Slide each end of the belt into the right z gantry back plate, with each end meeting in the middle of the print. Slide the Z motor up in its hardware slots and check for belt tension. If you're able to get the belt completely taut, great! If not, remove the loose ends of the belt, snip off a belt rib from one side, and try again.

108mm belt between two back plates

{{< container-image path="images/IMG_0704.JPG" alt="" >}}

25. After you're able to achieve proper tension without hitting the end of the Z motor mounting hardware slots, put the right z gantry onto the right z gantry back plate, and screw them into the linear rail gantry using four M3x10mm screws. Next, tighten the GT2 pulley onto the Z motor shaft. Make sure it's in the correct Y position on the shaft so that it's in line with the gantries and the idler at the bottom. Lastly, pull upwards on the Z motor until you achieve tension on the belt, then tighten the screws holding it on. Start with the screw at the top of the print, then the bottom, then the two side screws.

TODO(pic of tightening the right z gantry in place with belt)
TODO(pic tightening the z pulley)
TODO(pic pulling up on z motor and tightening)

26. Now that our Z gantries are all tightened and moving freely, we can mount our final axis: rotation! Take your NEMA?? hollow shaft stepper motor, and place it in the left z gantry. Secure it in place with four M2.5x8mm screws.

{{< container-image path="images/Screen Shot 2021-12-29 at 6.20.02 PM.png" alt="" >}}

27. Now we'll mount a few bits of hardware to the hollow shaft motor. Screw the CP40 nozzle holder into the bottom side of the motor, and screw the press-fit pneumatic coupler into the top side.

{{< container-image path="images/Screen Shot 2021-12-29 at 6.22.45 PM.png" alt="" >}}

28. Fit two of the GT2 belt clamps onto the back of the X gantry, and lightly secure them in place with four M5x10mm screws.

{{< container-image path="images/Screen Shot 2021-12-29 at 6.35.19 PM.png" alt="" >}}
