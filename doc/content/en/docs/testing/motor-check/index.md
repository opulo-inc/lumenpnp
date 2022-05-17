---
title: "Motor Check"
linkTitle: "Motor Check"
weight: 20
description: >-
     How to check the motors on your LumenPnP
---

Now that you're connected to your LumenPnP, we're going to send it some Gcode and test its motors. 

Before we do though, it's important to make sure that our limit switches are connected properly and will allow us to home correctly. For each of the three limit switches on the machine, tap the switch closed and watch for a red LED to light up on the limit switch PCB. If all three do, proceed with motor movement testing. If not, double check your limit switch connections.

First send it the following lines of Gcode one-by-one. These commands will set the machine to an absolute positioning system, and start the homing procedure. You should see the machine move all three linear axis and home using the three limit switches:

```gcode
G91 ;absolute positioning
G28 ;homing procedure
```

If the X, Y, and Z axis all moved and homed correctly, excellent! If not, you might have a cable unplugged or inserted the wrong way around. If your Y axis doesn't move correctly, double check that you soldered the Y2 connector opposite of the silkscreen as noted in the Motherboard section.

Next we'll check the left nozzle rotation stepper motor:

```gcode
G0 A90
```

You should see your nozzle stepper rotate 90 degrees.
