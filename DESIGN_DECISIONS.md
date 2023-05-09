# LumenPnP Design Decisions

This page aims to illustrate the design decisions behind the LumenPnP. The design process started in early 2020, and has seen hundreds of iterations and approaches. This page gives background about why things are done the way they are, to help communicate to folks new to the project what has been tried, and why it was not chosen.

## Overview

The LumenPnP is a mostly 3D printed desktop pick and place machine. It has two nozzles on the head, using the Samsung CP40 nozzle tip standard. There are two built-in cameras and ring lights for top and bottom vision. These are used for fiducial calibration of the board being populated and part rotation/offset calibration on the nozzle. It is capable of populating boards as large as 225mm x 400mm.

The LumenPnP is comprised of v-slot aluminum extrusion for most of the structural members in the machine, connected together using aluminum brackets and 3D printed parts. The X gantry rides on two Y gantries, and v-slot wheels are used for linear motion in the machine. The main build area of the machine is comprised of staging plates, which are 120mm x 600mm PCBs with a [Peek Array](https://www.crowdsupply.com/sutajio-kosagi/novena) for mounting machine parts and strip feeders.

## Axis of Motion

There are five axis of motion in a stock LumenPnP. The X axis uses a NEMA 17 stepper motor, pulling a gantry with v-slot rollers along a v-slot aluminum extrusion with a GT2 timing belt. The Y axis is identical, except there are two gantries with two NEMA 17 stepper motors, both driven using the same stepper driver. The Z axis is also driven by a NEMA 17 stepper and GT2 timing belt, but it pulls two counterweighted Z gantries along short linear rails. The last two axis, A and B, are comprised of just a NEMA 11 stepper motor with a hollow shaft through which we pull the vacuum that picks parts.

### Why not linear rails?

Mainly cost! V-slot rollers are very inexpensive, and accomplish the same goal, albeit slower and with a bit more tuning. Quality linear rails can add upwards of $100 to the Bill of Materials. That being said, community member Stargirl has made an [excellent mod](https://www.printables.com/model/278803-lumenpnp-linear-rail-mods-v3) that upgrades a stock v3 LumenPnP to using linear rails, and Opulo is exploring upgrading the machine to come with linear rails by default in the near future.

### Why not CoreXY?

CoreXY offers the possibility of faster movement by removing a heavy motor from one of the gantries, keeping the head very light and easy to accelerate. The speed bottleneck that v-slot rollers introduce means that the benefits from CoreXY aren't realized.

CoreXY also has a much more complicated belt routing path. Keeping axis separate allowed Opulo to ship each axis packaged separately, meaning belts are pre-routed making assembly much easier.

With the limitations of v-slot rollers and the need to ship in parts not present, CoreXY would likely show an appreciable improvement in movement speed.

### Why not a NEMA 8 hollow shaft for part rotation?

In the early days of design, we struggled to find a full 360 degree pneumatic coupler for 4mm PU tubing with a M5 threading at a decent price that didn't leak like a sieve. This coupler was meant to thread into the top of the hollow-shaft steppers that rotate parts on the nozzles. Because we couldn't get a good coupler, we were forced to limit the A and B axis rotation to plus or minus 180 degrees as to not tangle up the tubing, as opposed to being able to rotate any amount in any direction. Even then, the tubing provided enough resistance to rotation that a beefier stepper was required to ensure we weren't skipping steps when rotating nozzles.

Since then, the community has found sources for much better couplers that eliminate this problem. With almost no resistance to rotating nozzles, much smaller motors can be used. This is an update Opulo is actively exploring rolling into production, especially in conjunction with a linear rail/CoreXY update where the benefit of this weight reduction would be realized.

## Firmware

The LumenPnP runs stock Marlin firmware. Marlin was originally designed to control 3D printers, but it works spectacularly for controlling a pick and place machine. We've added a couple features to Marlin to support pick and place specific functions, namely reading vacuum sensors and communicating to feeders.

### Why not a different firmware project?

There exist many different 3D printer/CNC firmware projects, of which a number would likely work well for a pick and place. We ended up choosing Marlin for a number of reasons.

The first and primary reason for choosing Marlin is the ease of adding new hardware to mainline. Marlin supports hundreds of different controller boards, and adding a new one is a well understood process. This also means any pick and place specific features we add upstream are able to be used by folks on hundreds of other hardware designs.

Other options like Klipper would definitely fulfill the requirements of the project, but many of the features of these other options are unnecessary for a pick and place application.

## Motherboard

The LumenPnP motherboard is a custom controller based on the STM32F407VET6 microcontroller. It has support for up to 6 axis of motion, four pumps or valves, two servos, two vacuum sensors, two WS2812 busses, sensorless homing in X and Y, six limit switches, an RS-485 port for feeder communication, and three AUX ports packed with GPIO and interfaces.

### Why not off the shelf?

Some off the shelf boards would work great for the core functionality of a pick and place. We wanted to provide new features specific to pick and place machines that are not available in other hardware. The main features we wanted to add were vacuum sensors for detecting if parts have been successfully picked, and a port to provide power and communication for feeders.
