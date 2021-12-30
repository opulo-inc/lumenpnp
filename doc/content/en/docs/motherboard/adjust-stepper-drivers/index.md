---
title: "Adjust Stepper Motor Driver Current"
linkTitle: "Adjust Stepper Motor Driver Current"
weight: 20
description: >
  Instructions on how to adjust the current setting on your stepper motor drivers.
---

The amount of current running through the Index's stepper motors needs to be adjusted before use.

## Installation and Power

To begin, install the four stepper motor drivers into the X, Y, Z, and Left Head slots. 

TODO(pic of four drivers installed)

Next, cut the connector off of the end of the power supply cable. Then separate the two wires, strip off the insulation of each. Twist the stranded copper and insert the wire with the white stripe into the positive side of the power screw terminal on the motherboard. Insert the black wire into the other terminal, and screw both down tightly.

TODO(pic of cutting connector)
TODO(pic of stripped cable)
TODO(pic of cables inserted, being tightened)

Next, plug in your power brick. Watch for a yellow light by the screw terminal. If you do not see a yellow light, check to make sure you inserted the wires into the correct terminals. Also check to see if the light on the power brick is illuminated.

TODO(pic of power light on mobo)
TODO(pic of power light on brick)

It is very important to not plug in or unplug stepper motor drivers or motors while the board is powered on. Make sure to unplug the power supply before inserting or removing drivers or motors.

## Current Adjustment

Now that your board is powered up, it's time to adjust the driver current. This is done by turning a potentiometer with a small flathead screwdriver (one is provided in your PCB kit).

{{< alert color="warning" title="Caution" >}}
The screwdriver included in your kit has a ceramic tip to prevent any accidential conduction. This means that it is very fragile. Be incredibly careful with the tip, and do not apply any excessive force when adjusting the potentiometer.
{{< /alert >}}

On any driver, use a multimeter to measure the voltage between the `GND` pin and the `Vref` pad as shown in the image below.

{{< container-image path="images/TMC2209_vref_V30.jpeg" alt="Where to probe a 2209" >}}

This voltage dictates how much current the driver will run through the stepper motor, and can be adjusted by turning the potentiometer (shown in the diagram above). The table below shows what voltage you should adjust each driver to:

| Motor       | Voltage     |
| ----------- | ----------- |
| X           | 1.2v        |
| Y           | 2.1v        |
| Z           | 1.2v        |
| Left Head   | 0.7v        |

Your drivers are now configured to drive your motors correctly. For more information about adjusting your stepper motor drivers, [click here](https://wiki.fysetc.com/Silent2209/).

