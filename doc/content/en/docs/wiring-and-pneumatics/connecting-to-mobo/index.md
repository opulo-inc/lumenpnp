---
title: "Connecting to the Motherboard"
linkTitle: "Connecting to the Motherboard"
weight: 40
description: >
  Plugging in all the cables in the machine into the motherboard 
---

Take your LumenPnP and flip it up onto its back haunches. You should see lots of cables loosely attached to the front left leg, all looking for a home. We're about to give them one!

## Plugging in
We'll first start by plugging in the Y motors you routed behind the motherboard in an earlier step. Plug the cable labeled `Y1` into the left Y motor port on the motherboard, and plug the `Y2` cable into the right.

{{< container-image path="images/IMG_0766.JPG" alt="" >}}

Next comes the USB cables. These will also have their cables run underneath the motherboard. Take the Bottom Camera USB cable and run it to the left across the staging plate, under the motherboard, and out the other side. Plug it into the USB port by the label `Btm Cam` and make sure the majority of the cable is stuffed underneath the board.

Now we'll do the same thing, but with the Top Camera cable. Guide it from the top left of the staging plate underneath the mobo from the top side, and guide it out the side like the other USB cable. Plug it into the USB port by the label `Top Cam` and ensure any extra cable is pushed underneath the motherboard.


The rest of the cables can be routed without being tucked underneath the motherboard. Plug in the listed labeled cables into their respective ports, shown below:

| Cable Label        | Mobo Label                    |
| ------------------ | ----------------------------- |
| `XM`               | `X`                           |
| `Y1`               | `Y` (Left Port)               |
| `Y2`               | `Y` (Right Port)              | 
| `ZM`               | `Z`                           |
| `LM`               | `L`                           |
| `XL`               | `X`  (Under `Limit Switches`) |
| `ZL`               | `Z`  (Under `Limit Switches`) |
| `YL`               | `Y`  (Under `Limit Switches`) |
| `UL`               | `Btm Cam`                     |
| `DL`               | `Top Cam`                     |
| `P1`               | `MOS1`                        |
| Valve 1 (No Label) | `MOS2`                        |

## Strain Relief

Now that we have everything plugged in, it's time to attach all these loose cables to the frame. Use some Peek Cable Guides (FDM-0023) with some M3x14mm screws and M3 nuts to hold down the cables across the staging plate. 

{{< container-image path="images/IMG_0834.JPG" alt="" >}}

Take your umbilical cable bundles and loosely secure them in place on the umbilical guide using a couple big zip ties. Don't tighten all the way yet; we still need to route the pneumatics.

{{< container-image path="images/IMG_0826.JPG" alt="" >}}
