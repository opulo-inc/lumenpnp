---
id: mechanical-assembly
summary: In this codelab you'll find the assembly instructions for the Index PnP. Details of this open source project can be found at https://github.com/sphawes/index.
status: [draft]
authors: David Smith and Gonçalo Pereira
categories: build
tags: io2016,kiosk,web
feedback link: https://github.com/sphawes/index/issues
source: 1dvKG4yxrd4CWNRrNylbOhRp2zqyEUtE9aT_b7IfwgCg
duration: 75

---

# Index PnP Assembly Guide

[Codelab Feedback](https://github.com/sphawes/index/issues)


## Introduction



**Last Updated:** 2021-01-08

### **What is Index?**

Index is an open source Pick and Place machine being developed by Stephen Hawes. The Index is designed to be low cost and be controlled by  [OpenPNP](https://openpnp.org/). 

### **What you'll build**

This tutorial will take you through the build of the Index Pick and Place machine from parts to an assembled frame with the electronics installed. It will cover feeder floor installation, but will not cover the build of the feeders.

Your final Index will be ready for connection to OpenPNP. It will look similar to the following:

TODO: Insert Some Pictures of Index

### **What you'll learn**

* How to prepare and assemble the frame and gantries of the Index
* How to assemble the motion system of the Index
* How to connect and install the electronic components of the Index
* How to connect Index to OpenPNP

This guide is focused on assembling an Index and getting to being able to run your first job. Certain configuration details may be glossed over and simply provided to copy and paste.

### **What you'll need**

#### **Parts**

> aside negative
> 
> **Caution:** The project is under active development and not all materials will be in sync. Please ensure that you've done some research to ensure you select the appropriate model, BOM, hardware, firmware and software combination.

To build your own index you will need to acquire the items listed on the  [BOM](https://github.com/sphawes/index/blob/freecad/pnp/bom.csv). This includes various mechanical components along with a significant number of  [3D printed parts](https://github.com/sphawes/index/tree/cba9cf411a3931a325bd251ce826df69dbc16522/pnp/cad/3D-Prints). When printing the 3d parts, be sure to print them with the recommended settings.

#### **Tools**

The following tools are needed to build the Index.

* 2mm Allen Key
* 2.5mm Allen Key
* 3mm Allen Key
* 4mm Allen Key
* Fine Tip Tweezers (for positioning T-Nuts)
* Pliers / Vice Grips
* Utility Knife / Precision Blade

#### **Tips & Tricks**

When assembling the Index, the following tips will help the process go more smoothly.

* **Clean up your 3D prints well.** Make sure that you have removed any support material, and have cleaned up the edges of any holes. Test that you can fit the V-Slot or machine screw for a specific part into the hole.
* **Deburr the aluminum profile at the ends.** Then it's easier to put parts together.
* **Positioning Slot Nuts** can be a bit of a challenge. A simple way to get them into the right place is to use gravity to get them close, and then use either the long end an allen key or a pair of fine tipped tweezers to push or pull them to the exact position.
* **Inserting Belts** can be easier if you move the gantry you're inserting the belt into to the middle of the rail it is on and then as you insert the belt, move it away from the side you want the belt to come out from. The v-slot will catch the belt and once you've moved the gantry a little bit, you will be able to catch the belt. Passing a belt through a belt slot from the inner side can be easier if you place an exacto knife blade at the back side of the slot and butt the belt against that while drawing it up through the slot.
* **Press Fit Nuts** are used in several places. If your printer tolerances make it so these nuts don't stay in you can use a piece of tape over the back to hold them in temporarily.


## Left Side
Duration: 10:00


The left side provides the rails on which the Y gantry runs. In addition, most of the cables are routed to the front left of the machine as that is where the controller ultimately lives.

> aside positive
> 
> **Note:** The frame build will not install the motion or electrical components unless they must be installed before the mechanical components of an assembly can be completed. In those cases, they will be noted during the assembly stage.

### **Necessary Components & Tools**

Collect the necessary items to build the left side of the frame. These are:

* 1x Left Front Leg (FDM-0001-00_front-left-leg_Body_001)
* 1x Left Back Leg (FDM-0003-00_back-left-leg_Body_001)
* 2x 20mm x 20mm Aluminum V-Slot - 600mm
* 6x M5x10mm Machine Screw
* 8x M5 Slot Nuts
* 3mm Allen Key or Hex Screwdriver

<img src="img/7b1cfbc798c5bc6f.png" alt="7b1cfbc798c5bc6f.png"  width="624.00" />

### **Assembly**

1. Take the Left Back Leg and insert the v-slot extrusions into the two square holes designed to take this part. Ensure that the extrusion comes to the end of the hole into which it is inserted.

<img src="img/8f9507356837165c.png" alt="8f9507356837165c.png"  width="432.00" />

2. Take the assembly and turn it so that you are looking directly at the ends of the v-slot opposite to the attached Left Back Leg.

<img src="img/b98f6e0aa4764bd5.png" alt="b98f6e0aa4764bd5.png"  width="432.00" />


* Insert two slot nuts into the top slot of the top rail (label A) from the open end. 
* Insert two slot nuts into the top slot on the bottom rail (label E) from the open end. Note: These will be used later when joining the two side assemblies.
* Insert one slot nut into the right slot on the bottom rail (label F) from the open end. 
* Insert three slot nuts into the left slot of the bottom rail (label H) from the open end. 

3. Take the Left Front Leg and place it onto two v-slot extrusions at the end opposite the Left Back Leg. Your progress should look like the image below.

<img src="img/222ac5d699142809.png" alt="222ac5d699142809.png"  width="432.00" />

4. On the top rail, position a slot nut underneath the hole in the top of each leg and screw a M5x10mm machine screw into the nut.

<img src="img/97fd45761f48ed63.png" alt="97fd45761f48ed63.png"  width="432.00" />

5. On the bottom rail, the outer side (shown above) has three exposed holes for machine screws (one on the back leg, two on the front leg). For each, position a slot nut under it and screw a M5x10mm machine screw into it.

<img src="img/15fb49140a9568f7.png" alt="15fb49140a9568f7.png"  width="432.00" />



6. On the bottom rail, the inner side has one exposed hole for a machine screw on the back leg. Position a slot nut under it and screw a M5x10mm machine screw into it.

<img src="img/83e6903f91b68f23.png" alt="83e6903f91b68f23.png"  width="432.00" />


## Right Side
Duration: 10:00


### **Necessary Components & Tools**

Collect the necessary items to build the right side of the frame. These are:

* 1x Right Front Leg (FDM-0002-00_front-right-leg_Body (Mirror #1)_001)
* 1x Right Back Leg (FDM-0003-00_back-left-leg_Body_002)
* 2x 20mm x 20mm Aluminum V-Slot - 600mm
* 6x M5x10mm Machine Screw
* 8x M5 Slot Nuts
* 3mm Allen Key or Hex Screwdriver

<img src="img/87cab2b44463bf59.png" alt="87cab2b44463bf59.png"  width="624.00" />

### **Assembly**

1. Take the Right Back Leg and insert the v-slot extrusions into the two square holes designed to take this part. Ensure that the extrusion comes to the end of the hole into which it is inserted (See Left Side Assembly Step 1 for an example).
2. Take the assembly and turn it so that you are looking directly at the ends of the v-slot opposite the attached Right Back Leg.

<img src="img/b98f6e0aa4764bd5.png" alt="b98f6e0aa4764bd5.png"  width="432.00" />

* Insert two slot nuts into the top slot of the top rail (label A) from the open end.
* Insert two slot nuts into the top slot on the bottom rail (label E) from the open end. Note: These will be used later when joining the two side assemblies.
* Insert three slot nuts into the right slot of the bottom rail (label F) from the open end.
* Insert one slot nut into the left slot on the bottom rail (label H) from the open end.

3. Take the Right Front Leg and place it onto two v-slot extrusions at the end opposite the Right Back Leg.
4. On the top rail, position a slot nut underneath the hole in the top of each leg and screw a M5x10mm machine screw into the nut.

<img src="img/f4e616383fe7c043.png" alt="f4e616383fe7c043.png"  width="432.00" />

5. On the bottom rail, the outer side has three exposed holes for machine screws (one on the back leg, two on the front leg). For each, position a slot nut under it and screw a M5x10mm machine screw into it.

<img src="img/636740e16d4f907a.png" alt="636740e16d4f907a.png"  width="432.00" />

6. On the bottom rail, the inner side has one exposed hole for a machine screw on the back leg. Position a slot nut under it and screw a M5x10mm machine screw into it.

<img src="img/7fd0c8ebff6101ac.png" alt="7fd0c8ebff6101ac.png"  width="432.00" />


## Frame Assembly
Duration: 15:00


The Left and Right side assemblies that were completed in the previous steps are next connected together by two 600mm v-slot extrusions. One is installed near the front, while the second is installed adjacent to the back legs.

### **Necessary Components & Tools**

Collect the necessary items to complete the main frame. These are:

* 1x Left Side Assembly (see above)
* 1x Right Side Assembly (see above)
* 1x Body Umbilical Guide (FDM-0022-00_umbilical-guide_Body_001)
* 2x 20mm x 20mm Aluminum V-Slot - 600mm
* 4x M5x10mm Machine Screw
* 4x M5x8mm Machine Screw
* 8x M5 Slot Nuts
* 2x 2020 Corner Bracket
* 3mm Allen Key or Hex Screwdriver

<img src="img/37af63ba825353ab.png" alt="37af63ba825353ab.png"  width="624.00" />

### **Assembly**

1. Take the left side assembly and from the end with the back leg, insert two slot nuts into the bottom slot of the lower rail from the open end.

<img src="img/4bbd653e35c9cb61.png" alt="4bbd653e35c9cb61.png"  width="116.64" />

2. Attach the Body Umbilical Guide using two M5x10mm machine screws which are inserted through the holes in the umbilical guide into slots.

<img src="img/bc8b83be1216b1d5.png" alt="bc8b83be1216b1d5.png"  width="432.00" />

3. Take a new v-slot extrusion and insert two slot nuts into one of the slots from the end.
4. With the v-slot containing the slot nuts facing the front of the machine, insert the v-slot extrusion (in green below) into the left front leg underneath the bottom rail.

<img src="img/fea0093394c5fd9e.png" alt="fea0093394c5fd9e.png"  width="371.52" />

5. Position a slot nut underneath the hole and use a M5x10mm machine screw to fasten the v-slot extrusion in place.

<img src="img/6b83aab3a1e77719.png" alt="6b83aab3a1e77719.png"  width="371.74" />

6. Place the right side onto the opposite end of the v-slot extrusion (in green) so that the mounting hole is in line with the v-slot.

<img src="img/c3bcb81c95a37667.png" alt="c3bcb81c95a37667.png"  width="371.52" />

7. Position the slot nut underneath the hole in the right front leg and use a M5x10mm machine screw to fasten the v-slot extrusion in place.

<img src="img/6861c5c2d75d33b2.png" alt="6861c5c2d75d33b2.png"  width="371.52" />

8. Take the remaining v-slot extrusion and on one side insert two slot nuts.
9. Use these slot nuts along with the M5x8mm machine screws to connect a 2020 corner bracket near each end of the extrusion. Adjust the tightness so they're snug but can still be moved.
10. Insert a slot nut into the bottom slot of the bottom rail on the left side.

<img src="img/4bbd653e35c9cb61.png" alt="4bbd653e35c9cb61.png"  width="116.64" />

11. Place the v-slot with the corner connectors (shown in green) against the bottom rail and insert a M5x8mm nut through the corner connector into the slot nut to connect the bottom rail with the cross piece.

<img src="img/a33abd6d0e3b6c32.png" alt="a33abd6d0e3b6c32.png"  width="432.00" />

<img src="img/1593a4fdf5fc8763.png" alt="1593a4fdf5fc8763.png"  width="309.96" />

12. Insert a slot nut into the bottom slot of the bottom rail on the right side (see step 10 for an image if needed).
13. Place the v-slot with the corner connector against the bottom rail on the right assembly and insert a M5x8mm nut through the corner connector into the slot nut to connect the bottom rail with the cross piece.
14. Line up the ends of the cross piece with the bottom rails and tighten. 

TODO: Installation of the panel for mobo, camera, etc.

> aside positive
> 
> **Note:** The frame needs to be square for the gantry to work properly. When the gantry is installed, you will want to adjust this back cross-piece to ensure that the frame is square.


## X Idler Mount
Duration: 05:00


### **Necessary Components & Tools**

Collect the necessary items to complete the X idler mount. These are:

* 1x X Idler Mount (FDM-0013-00_x-idler-mount_Body_001)
* 1x M5x30mm Machine Screw
* 1x M5 Hex Nut
* 1x GT2 Idler Pulley (5mm Bore)
* 4mm Allen Key or Hex Screwdriver

<img src="img/652658020ff787d5.png" alt="652658020ff787d5.png"  width="299.50" />

### **Assembly**

1. Insert the M5 Hex Nut into the slot for the hex nut on the bottom of the Idler Mount.

<img src="img/9531b8ffe97d782a.png" alt="9531b8ffe97d782a.png"  width="336.00" />

2. Place the GT2 Idler into the slot in the middle.

<img src="img/751578fd22e631c3.png" alt="751578fd22e631c3.png"  width="336.00" />

3. Insert the M5x30mm Machine Screw through the hole in the top so that it passes through the idler mount, the idler and tighten into the M5 Hex Nut.

<img src="img/ab20f1859758f68f.png" alt="ab20f1859758f68f.png"  width="336.00" />



## X Motor Mount
Duration: 05:00


### **Necessary Components & Tools**

Collect the necessary items to complete the X motor mount. These are:

* 1x X Motor Mount (FDM-0006-00_x-motor-mount)
* 1x NEMA 17 Stepper Motor
* 1x GT2 Drive Pulley (5mm Bore)
* 4x M3x12mm Machine Screw
* 2 mm Allen Key or Hex Screwdriver
* 2.5mm Allen Key or Hex Screwdriver

<img src="img/67e988e25ac5b706.png" alt="67e988e25ac5b706.png"  width="624.00" />

### **Assembly**

1. Install the GT2 pulley onto the motor shaft. The set screw side of the pulley should be nearest the motor. Tighten the set screws to lock the pulley into place. It should be at the tip of the shaft.

<img src="img/9686654f59bcb958.png" alt="9686654f59bcb958.png"  width="243.04" />

2. Place the motor onto the X motor mount with the wires exiting the motor on the left side of the bracket.

<img src="img/d4fe19a45fa32c2d.png" alt="d4fe19a45fa32c2d.png"  width="308.00" />


3. Insert a M3x12mm machine screw into each of the 4 holes in the bracket and tighten to secure the motor to the mount.

<img src="img/a4fa139b460ee08e.png" alt="a4fa139b460ee08e.png"  width="336.00" />


## Y Gantry
Duration: 30:00


### **Necessary Components & Tools**

Collect the necessary items to complete the Y gantry. These are:

* 1x X Idler Mount Assembly (see above)
* 1x X Motor Mount Assembly (see above)
* 1x Y Gantry Umbilical Mount (FDM-0010-00_y-gantry-umbilical-mount)
* 2x Y Gantry Body (FDM-0005-00_y-gantry)
* 2x Y Gantry Support (FDM-0008-00_y-gantry-support)
* 4x Roller Spacers (FDM-0009-00_roller-spacer)
* 1x 20mm x 20mm Aluminum V-Slot - 600mm
* 2x M5 Slot Nut
* 2x M5x10mm Machine Screw
* 6x M5x20mm Machine Screw
* 2x M5x25mm Machine Screw
* 6x M5x50mm Machine Screw
* 6x M5 Nylon Lock Nut
* 16x M5 Hex Nut
* 6x V-Slot Rollers
* 4x M3 Hex Nut
* 4x M3x16mm or M3x20mm Machine Screw
* 4mm Allen Key or Hex Screwdriver
* 3mm Allen Key or Hex Screwdriver
* Pliers

#### **Assembly**

1. Insert a M5 Hex Nut into one of the hex nut locations on the Y gantry body and push into the 3d print.

<img src="img/a34f008d4f41a1f7.png" alt="a34f008d4f41a1f7.png"  width="305.64" />

2. Pull the hex nut fully into location by screwing a M5x10mm machine screw into it from the opposite side of the Y gantry body. Then unscrew the M5x10mm machine screw.
3. Repeat steps 1-2 for the remaining seven M5 nut locations.
4. Insert a M3 Hex Nut vertically into the slot near the adjustment slot on the Y Gantry Body.

<img src="img/6a3e204d383a25c0.png" alt="6a3e204d383a25c0.png"  width="307.80" />

5. Tighten an M3 x 16mm screw into the Hex Nut installed in the previous step.
6. Insert a M3 Hex Nut vertically into the slot near the adjustment slot on the Y Gantry Support.

<img src="img/bbbd82638c34d66f.png" alt="bbbd82638c34d66f.png"  width="308.16" />

7. Tighten an M3 x 16mm screw into the Hex Nut installed in the previous step.
8. Insert a M5x50mm machine screw into the Y Gantry Body through each of the two positions for the top rollers.
<img src="img/44c1405308f220fb.png" alt="44c1405308f220fb.png"  width="308.16" />
9. Place a V-Slot roller onto the two M5x50mm machine screws.
<img src="img/3fc8d3ccf3b259f.png" alt="3fc8d3ccf3b259f.png"  width="308.16" />
10. Place the Y gantry support onto the two M5x50mm machine screws.
<img src="img/5ca849a0a5e7e379.png" alt="5ca849a0a5e7e379.png"  width="308.16" />
11. Place a M5 Nylon lock nut onto the end of each M5x50mm machine screw and tighten so they won't fall off.
<img src="img/714f9529b4e71eb9.png" alt="714f9529b4e71eb9.png"  width="308.16" />
12. Repeat steps 1-11 for the second Y gantry body & support
13. Insert two slot nuts into one slot of the v-slot extrusion.
<img src="img/aa0b69f5f8f9e504.png" alt="aa0b69f5f8f9e504.png"  width="308.16" />
14. Place a gantry body assembly (steps 1-11 x 2) on each end of the extrusion so that the holes for the machine screws are above the slot into which the slot nuts were placed.
15. Ensure the extrusion is butted up to the body of each gantry assembly.
<img src="img/77acd3e2386adf2a.png" alt="77acd3e2386adf2a.png"  width="308.16" />
16. Position a nut under each machine screw hole and tighten the machine screws from step 8 until they are snug.
17. Place the entire structure on top of the top rails of the frame
<img src="img/adae75a2ccd8e029.png" alt="adae75a2ccd8e029.png"  width="432.00" />
18. On both sides, below the rail, insert a v-slot roller with a roller spacer on each side. Then push a M5x50mm machine screw through the gantry and roller assembly.
<img src="img/fa7840330c368672.png" alt="fa7840330c368672.png"  width="308.16" />
19. Adjust the bottom rollers up so they snug against the extrusion  and ensure that the v-slot rollers run well in the slots. This adjustment should be done with the M3x16mm screws in the bottom of theY Gantry Body and Y Gantry Support.
20. If necessary, loosen the machine screws connecting the extrusion to the left and right side Y gantries and adjust so that the v-slot rollers ride well along the entire length of frame.
21. Tighten the machine screws on the extrusion joining the gantry bodies and the three M5x50mm machine screws on each gantry body.

> aside positive
> 
> **Note:** The frame needs to be square for the gantry to work properly. With the gantry installed, you may need to adjust the rear cross piece to ensure that the gantry travels well from the front to rear of the machine.

22. Using four M5x20mm machine screws, attach the X idler assembly to the right side gantry body. The machine screw head should be visible when looking down at the top of the machine.
<img src="img/c016aff7f7be5946.png" alt="c016aff7f7be5946.png"  width="308.16" />
23. Using two M5x20mm machine screws and two M5x25mm, attach the X motor mount & gantry umbilical mount to the left side gantry body. The motor should be on top with the pulley facing downwards. The umbilical mount should be at the back, on the same side as the wires.


## Y Gantry Motion



Duration: 20:00

#### Necessary Components & Tools

Collect the necessary items to complete the X motor mount. These are:

* 1x Y Gantry (See Above)
* 4x Belt Clamp (FDM-0025-00_belt-clamp)
* 2x NEMA 17 Stepper Motor
* 2x GT2 Idler (5mm Bore)
* 8x M5x15mm Machine Screw
* 2x M5x35mm Machine Screw
* 2x M5 Hex Nut
* 8x M3x8mm Machine Screw
* 1x GT2 Timing Belt
* 2.5mm Allen Key or Hex Screwdriver
* 4mm Allen Key or Hex Screwdriver

### **Assembly**

1. Install a GT2 pulley onto each motor shaft. The set screw side of the pulley should be nearest the motor.
<img src="img/9686654f59bcb958.png" alt="9686654f59bcb958.png"  width="308.16" />
2. On each motor, tighten the set screws to lock the pulley into place. It should be at the tip of the shaft.
3. Using four M3x8mm machine screws, install a motor onto the left back leg motor bracket. The wires should face towards the front of the machine.
4. Repeat the previous step for the motor on the right back leg.
5. Into the left front leg, insert a GT2 idler and use an M5x35mm machine screw and M5 hex nut to secure the idler into the space for it.
6. Repeat the previous step for the idler on the right front leg.
7. Move the gantry to the middle of the frame, then insert an end of the GT2 timing belt into the belt slot nearest the front of the machine on the left side gantry. Ensure the teeth are facing towards the middle of the assembly as you insert the belt.
8. Take hold of the belt on the v-slot side of the gantry and work it to the end of the gantry, around the idler and along the inner side of the v-slot extrusion. Ensure that the belt passes underneath the gantry as you work the belt to the motor end of the extrusion. Pass the belt around the motor and along the outer side of the extrusion until you reach the gantry. Then pass the belt through the belt slot on the gantry.
9. Secure the short end of the belt to the gantry using a belt clamp and two M5x15mm machine screws. For adjustment, you may want to leave 2-3 teeth past the belt clamp.
10. Pull the unsecured end of the belt taught and secure with a belt clamp and two M5x15mm machine screws. Cut the belt on the outer side of the gantry such that there are a few teeth available for tension adjustment.
11. Repeat steps 7-10 on the right side of the gantry.

TODO: Cable Routing


## X Gantry



Duration: 1:00

### **Necessary Components & Tools**

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
* 3x M5x45mm Machine Screw
* 3x M5 Nylon Lock Nut
* 3x V-Slot Rollers
* 7x M3 Nut
* 7x M5 Nut
* 2x Linear Rail - 100mm
* 1x Limit Switch
* 2.5mm Allen Key or Hex Screwdriver
* 4mm Allen Key or Hex Screwdriver
* 3.3V power source

### **Assembly**

1. Insert a M5 Hex Nut into one of the hex nut locations on the X gantry back and push into the 3d print. 
<img src="img/325f44ff6fdf60ca.png" alt="325f44ff6fdf60ca.png"  width="308.16" />
2. Pull the hex nut fully into location by screwing a M5x10mm machine screw into it from the opposite side of the X gantry back. Then unscrew the M5x10mm machine screw.
3. Repeat steps 1-2 for the remaining five M5 nut locations.
<img src="img/2c9c77ae6eb329da.png" alt="2c9c77ae6eb329da.png"  width="308.16" />
4. Insert a M3 Hex Nut vertically into the slot near the adjustment slot on the X gantry back.
<img src="img/95d73b206471936b.png" alt="95d73b206471936b.png"  width="308.16" />
5. Tighten an M3 x 12mm screw into the Hex Nut installed in the previous step.
<img src="img/c8af1569e2073d4e.png" alt="c8af1569e2073d4e.png"  width="308.16" />
6. Insert an M3 Hex Nut into one of the hex nut locations on the X gantry front and push into the 3d print.
<img src="img/ee20a1a503ef317d.png" alt="ee20a1a503ef317d.png"  width="308.16" />
7. Pull the hex nut fully into location by screwing a M3x12mm machine screw into it from the opposite side of the X gantry back. Then unscrew the M3x12mm machine screw.
8. Repeat steps 6-7 for the remaining five M3 nut locations.
<img src="img/85880d188ddf93e6.png" alt="85880d188ddf93e6.png"  width="308.16" />
9. Insert a M5 nut into the M5 nut location at the bottom of the X front gantry
<img src="img/2078c7c7038c887b.png" alt="2078c7c7038c887b.png"  width="308.16" />
10. Insert a M5x45mm machine screw into each of the top two holes on the X Gantry Front which have a printed roller spacer.
<img src="img/e2108903e6911312.png" alt="e2108903e6911312.png"  width="308.16" />
11. Onto each of the two machine screws placed in the previous step, place a V-slot roller
<img src="img/6e29562409ce933b.png" alt="6e29562409ce933b.png"  width="308.16" />
12. Place the X gantry rear onto the two machine screws
<img src="img/79404db3c84d18c8.png" alt="79404db3c84d18c8.png"  width="308.16" />
13. Add a M5 nylon lock onto each of the two machine screws
<img src="img/a1d23a295e5da862.png" alt="a1d23a295e5da862.png"  width="308.16" />
14. Tighten the nylon lock nuts on the machine screws so that the two sides are snug against the V-slot rollers.
15. Place a Linear Rail onto the X gantry front and line up the holes with the three holes on the left.
<img src="img/b5177bd2566001c2.png" alt="b5177bd2566001c2.png"  width="308.16" />
16. Place an M3x12mm machine screw into each of the holes and tighten to attach the linear rail.
<img src="img/d6fafb744f752b33.png" alt="d6fafb744f752b33.png"  width="308.16" />
17. Repeat steps 15-16 for the right side linear rail.
<img src="img/99579f4387f414d2.png" alt="99579f4387f414d2.png"  width="308.16" />
18. Place the NEMA 17 motor so the shaft runs through the X gantry front and emerges on the same side as the linear rails.
<img src="img/d39d92ce5fe2b6e2.png" alt="d39d92ce5fe2b6e2.png"  width="308.16" />
19. Fasten the NEMA17 motor to the X gantry front using four M3x8mm machine screws.
<img src="img/86b55f93f3d8b3fb.png" alt="86b55f93f3d8b3fb.png"  width="308.16" />
20. At the top left of the assembly front, place a limit switch PCB
<img src="img/9b29218162091282.png" alt="9b29218162091282.png"  width="308.16" />
21. Fasten the limit switch PCB with two M3x8mm screws.
<img src="img/34ece53ad49d13c7.png" alt="34ece53ad49d13c7.png"  width="308.16" />
22. Place a M5x45mm machine screw through the GT2 idler, the z axis roller spacer and into the X gantry front.
<img src="img/7b28d6f03444095.png" alt="7b28d6f03444095.png"  width="308.16" />
23. Secure this machine screw to the gantry by tightening it into M5 nut inserted in step 9.
24. Place the GT2 Pulley onto the motor shaft and use some belt to adjust the height to match the idler.
<img src="img/b6d6d1bd686691b.png" alt="b6d6d1bd686691b.png"  width="308.16" />
25. Tighten the pulley into place using the grub screws.
26. To the left linear rail attach the Z Gantry Left using four M3x6mm Machine Screws.
27. To the right linear rail attach the mirrored Z Gantry Left using four M3x6mm Machine Screws.
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


## Tool Assembly



Duration: 00:00

In this step you will assemble the tools you desire for your Index build. At the moment we support two sets of tools: A Placement Head and a Paste Dispensing Head (coming soon).

### **Necessary Components**

* Placement Head:
* 1x NEMA11 Motor
* 4x M2.5x8mm Screws
* 1x Pneumatic Fitting (6mm OD Tube and M5 Thread)
* 1x CP40 Nozzle Holder

### **Assembly**

Depending on the tools you intend to have on your Index, follow the appropriate instructions below.

#### **Placement head**

1. Attach the *Pneumatic fitting* and the *CP40 Nozzle Holder* to the *NEMA11 motor*
2. Use four *M2.5x8mm screws* to attach the *NEMA11 Motor* with the shaft facing down.


## Build Plate



Duration: 00:00

In this section we will make the necessary drills on the base plate in order to mount the camera, the Index Mobo, the pump and mount the plate onto the Index Frame.

### **Necessary Components**

* 1x 120x600x3mm (Steel / Acrylic / Plywood)
* 4x M5x10mm Screw

### **Assembly**


## Electrical



Duration: 00:00

### **Necessary Components**

* 1x Index Mobo 

### **Assembly**


## Vision Cameras



Duration: 00:00

### **Necessary Components**

* 1x ELP 1080p 2.1mm focal length with 1 meter cable
* 1x ELP 1080p 2.1mm focal length with 2 meter cable
* 4x M3x40mm Screws
* 4x M2x14mm Screws
* 8x M3 Nuts

### **Assembly**


## Cable Management



Duration: 00:00

Now it is time to do the cable management.

### **Necessary Components**

* 1x Frame Umbilical Mount (FDM-0007-00_frame-umbilical-mount_Body_001)
* 2x Umbilical open tubes (OD 28.5mm, 2 meters each)
* 2x M5x20mm Screw
* 1x PTFE tube (ID4mm OD6mm)

### **Assembly**

1. Use two M5x20mm screws to mount the *Frame Umbilical Mount* onto the *Front Left Leg*.


## Flash Motherboard



Duration: 20:00

With the frame complete it is time to configure the software side of things before hooking up the motherboard to the machine. This procedure was designed for Linux but it should work as well for macOS and Windows.

### **Necessary Components**

* Index Frame
* Index Mobo
* USB-A cable

### **Process:**

1. Install VS Code and the Platform IO (PIO) Plugin
2. Clone the Index repository with: `git clone https://github.com/sphawes/index`
3. Open the PIO project in `pnp/code/firmware_marlin`
4. Attach the Index Mobo to your computer with the USB-A cable
5. Boot the STM32 in DFU Mode
    1. Press and hold BOOT0
    2. Press Reset
    3. Release Reset
    4. Now you can release BOOT0

6. Use "Upload" (*arrow to the right* in the bottom left corner) to upload to the board:
<img src="img/f7685fd40b0d9864.png" alt="f7685fd40b0d9864.png"  width="359.00" />

7. Wait for the process to finish:
<img src="img/14a0fb34b7f3144c.png" alt="14a0fb34b7f3144c.png"  width="616.00" />

8. Press Reset on the board. Now it should show up as a COM Port on your PC.

### **Troubleshooting DFU Upload:**

* Make sure, that your board shows up correctly in DFU mode: 
<img src="img/c480dc32c0509b9e.png" alt="c480dc32c0509b9e.png"  width="399.50" />
* Edit the PIO config file (platformio.ini, located in the project folder):

1. Search for "STM32F407VE_black", backup the old config and then replace the existing config with the following
2. Notice that "upload_port           = 0483:df11" is commented out. This setting caused issues, at least for some users. After disabling it, uploading worked.

``` ini
#
# STM32F407VET6 with RAMPS-like shield
# 'Black' STM32F407VET6 board - https://wiki.stm32duino.com/index.php?title=STM32F407
# Shield - https://github.com/jmz52/Hardware
#
[env:STM32F407VE_black]
platform          = ${common_stm32.platform}
extends           = common_stm32
board             = blackSTM32F407VET6
# upload_port       = 0483:df11
upload_protocol   = dfu
upload_command    = dfu-util -a 0 -s 0x08000000:leave -D "$SOURCE"
board_build.f_cpu = 12000000L
build_flags       = ${common_stm32.build_flags}
  -D ARDUINO_BLACK_F407VE
   -D PIO_FRAMEWORK_ARDUINO_ENABLE_CDC
   -D USBD_USE_CDC_COMPOSITE
  ; -D MENU_USB_SERIAL 
  ; -D MENU_SERIAL=SerialUSB
  ; -D USBCON 
   -D USBD_VID=0x0483
   -D USBD_PID=0x5740
   -DLSE_VALUE=32768U
   -DHSE_VALUE=12000000U
  ; -D USB_MANUFACTURER="Unknown"
  -D USB_PRODUCT=\"BLACK_F407VE\"
  ; -D HAL_PCD_MODULE_ENABLED
  ;-D PIO_FRAMEWORK_ARDUINO_SERIAL_WITHOUT_GENERIC
  -D PIO_FRAMEWORK_ARDUINO_ENABLE_CDC
  ;-D PIO_FRAMEWORK_ARDUINO_NANOLIB_FLOAT_PRINTF
  ;-D PIO_FRAMEWORK_ARDUINO_USB_HIGHSPEED_FULLMODE
   
  

extra_scripts     = ${common.extra_scripts}
  pre:buildroot/share/PlatformIO/scripts/generic_create_variant.py
lib_ignore        = SoftwareSerial
```

#### **Things to check if the board doesn't show up as "STM32 BOOTLOADER":**

* Check if the USB hub works by connecting devices to other ports. This is not an absolute guarantee that the connection to the STM32 works though.
* Check if all solder joints look fine
* Check if all voltages are present
* Keep in mind that blank STM32s should still appear as a USB device, even if they have no firmware loaded onto them
* Check the 8MHz crystal oscillator of the SMT32. It's correct operation is important for normal operation of the DFU. Wrong frequency and / or incorrect load capacitors can cause issues.

#### **Alternative method to upload:**

This method requires an ST-Link (V2 Clone or equivalent). Additionally you need the software  [STM32CubeProgrammer](https://www.st.com/en/development-tools/stm32cubeprog.html) by ST. This method is a bit more involved and takes longer than just using the DFU mode. 

1. Compile (build) the project normally with PIO

1. This generates a .bin-file that contains the firmware
2. Connect your board to your ST-Link through the SWD header on board
3. Start STM32CubeProgrammer
4. Connect to the MCU:
<img src="img/3a1798928d41bb18.png" alt="3a1798928d41bb18.png"  width="306.00" />

5. Click on **Open file** and navigate to the **firmware.bin** file in *PROJECT_DIRECTORY/.pio/build/STM32F407VE_black*
<img src="img/efe1d5f076b9be61.png" alt="efe1d5f076b9be61.png"  width="375.00" />

6. Click on **Download**. This will flash the SMT32F4 with the provided firmware
<img src="img/767cc275e3916de2.png" alt="767cc275e3916de2.png"  width="594.80" />

7. Done! Now you just have to disconnect the ST-Link and press Reset on the board <img src="img/3948425b05249e54.png" alt="3948425b05249e54.png"  width="535.11" />


## Configure OpenPnP



Duration: 00:00

### **Necessary Components**

### **Get Software (Windows)**

1. Download [OpenPNP 2.0](https://openpnp.org/downloads/)


