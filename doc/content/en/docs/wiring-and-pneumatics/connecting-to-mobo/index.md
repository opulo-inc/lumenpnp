---
title: "Connecting to the Motherboard"
linkTitle: "Connecting to the Motherboard"
weight: 40
description: >
  Plugging in all the cables in the machine into the motherboard 
---

Take your LumenPnP and flip it up onto its haunches. You should see lots of cables loosely attached to the {{<tooltip "Frame Umbilical Mount" "FDM-0007">}}, all looking for a home. We're about to give them one!

## Plugging in

1. We'll first start by plugging in the Y motors you routed behind the motherboard in [Wiring the Y Motors]({{< ref "wiring-y-motors.md" >}}). Plug the cable labeled `Y1` into the left Y motor port on the motherboard, and plug the `Y2` cable into the right one.
  {{< container-image path="images/IMG_0766.JPG" alt="correct orientation of the Y axis motor cables in the motherboard" >}}

2. Take the Bottom Camera USB cable and run it to the left across the staging plate, under the motherboard, and out the other side. Plug it into the USB port by the label `Btm Cam`. Store the excess cable underneath the motherboard.

3. Now we'll do the same thing, but with the Top Camera cable. Guide it from the top left of the staging plate, underneath the motherboard from the top side, then out the side like the other USB cable. Plug it into the USB port by the label `Top Cam` and Store the excess cable underneath the motherboard.

4. The rest of the cables can be routed without being tucked underneath the motherboard. Plug in the listed labeled cables into their respective ports, shown below:

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

1. Now that we have everything plugged in, it's time to attach all these loose cables to the frame. Use some {{<tooltip "Cable Clamps" "FDM-0023">}} with some M3x14mm screws and M3 nuts to hold down the cables across the staging plate.
  {{< container-image path="images/IMG_0834.JPG" alt="" >}}

2. Take your umbilical cable bundles and loosely secure them in place on the {{<tooltip "Umbilical Guide" "FDM-0022">}} using two big zip ties. Don't tighten all the way yet; we still need to route the pneumatics.
  {{< container-image path="images/IMG_0826.JPG" alt="" >}}
