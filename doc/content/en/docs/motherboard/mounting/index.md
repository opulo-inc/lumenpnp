---
title: "Mounting the Motherboard"
linkTitle: "Mounting the Motherboard"
weight: 10
description: >-
     Instructions about how to mount the motherboard on the staging plate
---

## Mounting

Now that we've got all the THT components soldered in, it's time to mount the motherboard to the staging plate.

It's important to make sure we're mounting the motherboard in the correct place on the staging plate so that all the cables fit and reach their respective ports correctly. Put your Lumen up on its haunches and take a look at the left side of the staging plate. Reference the picture below for which holes you should mount the 25mm standoffs. Pass four M3 x 8mm screws through the top side of the staging plate, and tighten them into the standoffs. 

{{< container-image path="images/IMG_0716.JPG" alt="" >}}

Now we can mount the motherboard itself. Take the board, and ensuring that the USB ports are facing to the left, and the vacuum sensors on the bottom, thread another four M3 x 8mm screws through the mounting holes on the motherboard into the standoffs.

{{< container-image path="images/IMG_0717.JPG" alt="" >}}

## Drivers and Power

To begin, install the four stepper motor drivers into the X, Y, Z, and Left Head slots. 

{{< container-image path="images/IMG_0718.JPG" alt="" >}}

Next, cut the connector off of the end of the power supply cable. Then separate the two wires, strip off the insulation of each. Twist the stranded copper and insert the wire with the white text into the positive side of the power screw terminal on the motherboard. Insert the black wire into the other terminal, and screw both down tightly.

{{< container-image path="images/IMG_0719.JPG" alt="" >}}

{{< container-image path="images/IMG_0720.JPG" alt="" >}}

{{< container-image path="images/IMG_0725.JPG" alt="" >}}

Next, plug in your power brick. Watch for a yellow light by the screw terminal. If you do not see a yellow light, check to make sure you inserted the wires into the correct terminals. Also check to see if the light on the power brick is illuminated.


{{< container-image path="images/IMG_0752.JPG" alt="" >}}

{{< container-image path="images/IMG_0753.JPG" alt="" >}}

It is very important to not plug in or unplug stepper motor drivers or motors while the board is powered on. Make sure to unplug the power supply before inserting or removing drivers or motors.