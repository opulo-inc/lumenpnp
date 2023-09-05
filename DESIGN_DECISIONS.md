# LumenPnP Design Decisions

This page aims to illustrate the design decisions behind the LumenPnP. The design process started in early 2020, and has seen hundreds of iterations and approaches. This page gives background about why things are done the way they are, to help communicate to folks new to the project what has been tried, and why it was not chosen.

## Overview

The LumenPnP is a mostly 3D printed desktop pick and place machine. It has two nozzles on the head, using the Samsung CP40 nozzle tip standard. There are two built-in cameras and ring lights for top and bottom vision. These are used for fiducial calibration of the board being populated and part rotation/offset calibration on the nozzle. It is capable of populating boards as large as 225mm x 400mm.

The LumenPnP is comprised of v-slot aluminum extrusion for most of the structural members in the machine, connected together using aluminum brackets and 3D printed parts. The X gantry rides on two Y gantries, and v-slot wheels are used for linear motion in the machine. The main build area of the machine is comprised of staging plates, which are 120mm x 600mm PCBs with a [Peek Array](https://www.crowdsupply.com/sutajio-kosagi/novena) for mounting machine parts and strip feeders.

## Axis of Motion

There are five axes of motion in a stock LumenPnP:

- The X linear axis is driven by a NEMA 17 stepper motor that pulls the X gantry along an MGN12H linear rail using a GT2 timing belt.
- The Y linear axis is similar, but uses two two NEMA 17 stepper motors and two MGN12H linear rails. These motors are driven by the same stepper driver.
- The Z linear axis is mounted to the X gantry and also uses a NEMA 17 stepper motor, but pulls two counterweighted Z gantries along short LML9B linear rails.
- The A & B rotational axes are mounted to the Z gantries and each use a NEMA 11 stepper motor with a hollow shaft. These pass the vacuum through to the nozzles used to pick and place parts.

### V-rollers vs linear rails

V-slot rollers are small wheels designed to ride inside the V-slots on aluminum extrusions. They're an inexpensive means to support and constrain the motion of a linear axis. They became very popular due to being used on mass market 3D printers such as the Ender 3. Linear guide rails, on the other hand, are solid steel rails coupled with a carriage block containing ball bearings. Linear rails require less maintenance and perform significantly better than V-rollers, but have typically been too expensive for hobbyist machines.

Due to this, V3 and earlier versions of the LumenPnP used V-rollers for the X and Y linear axes. However, times changed and 3D printers began competing on speed which necessitated linear rails - making them much easier and cheaper to source. As a result, Opulo switched the LumenPnP to linear rails going forward.

If you want to replace the V-rollers on an existing LumenPnP with linear rails you can use [Stargirl's mod](https://www.printables.com/model/278803-lumenpnp-linear-rail-mods-v3).

### Why not CoreXY?

CoreXY offers the possibility of faster movement by removing a heavy motor from one of the gantries, keeping the head very light and easy to accelerate.

However, switching to a CoreXY configuration would actually *remove* a motor from the current system. The current solution has two separate stepper motors dedicated to moving the Y gantry, and one motor for the X gantry. CoreXY would reduce this to only two motors shared across both axis, which actually results in an lower average acceleration.

Also, CoreXY has a much more complicated belt routing path than with a separate X and Y axis configuration. Keeping axes separate allows Opulo to ship each axis packaged separately, meaning belts are pre-routed making assembly much easier.

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

The LumenPnP motherboard is a custom controller based on the STM32F407VET6 microcontroller. It has support for up to 6 axis of motion, four pumps or valves, two servos, two vacuum sensors, two WS2812 busses, sensorless homing in X and Y, six limit switches, an RS-485 port for feeder communication, and three AUX ports packed with peripherals.

### Why not off the shelf?

Some off the shelf boards would work great for the core functionality of a pick and place. We wanted to provide new features specific to pick and place machines that are not available in other hardware. The main features we wanted to add were vacuum sensors for detecting if parts have been successfully picked, and a port to provide power and communication for feeders.
