---
title: "LumenPnP Assembly"
linkTitle: "LumenPnP Assembly"
weight: 20
resources:
- src: "**.png"
- src: "**.jpg"
menu:
  main:
    weight: 20
---

## What is the LumenPnP?

The LumenPnP is an open source Pick and Place project led by [Opulo](https://www.opulo.io/). The LumenPnP is designed to be low cost and suited towards [mid-scale manufacturing](http://stephenhawes.com/level-2-manufacturing/).

{{< container-image path="hero-alpha-min.png" alt="" >}}

The LumenPnP is capable of placing parts as small as 0402, with support for down to 0603. It is currently set up to use strip feeders, but development around active, powered feeders is ongoing.

It is completely open source and hackable. The main controller has three AUX ports, allowing anyone to add on peripherals or communicate with other machines.

{{% alert color="danger" title="WARNING" %}}
This documentation corresponds with a specific machine **Build Number**. The Build Number represents what hardware, 3D printed parts, documentation version, and software your machine has. The first number is what version of the Opulo hardware kit you have. The second number dictates which version of the 3D printed parts is used. The third number dictates a version of the docs and software.

{{< container-image path="build-number.png" alt="" >}}

If you're building from a kit, check the included pamphlet for Hardware Number. (Early kits have the full build number `v2.0.X`, if you have this, consider your Hardware Number to be `2`.) This is the `X` value above.

The `Y` value is the Printed Parts Version. When you receive your kit, find the most recent release starting with your Hardware Number, and print the parts found there. Remember this number; these `X` and `Y` numbers dictate your machine's hardware!

The `Z` dictates any software or documentation updates. **Use the build number with the highest number in the Z position that you see in the dropdown**. This means you'll be using the most up to date docs and software for your machine's hardware. **Check the drop down in the upper right to select your Build Number.**

{{< container-image path="build-number-example.png" alt="" >}}

For example, let's say you received a `v2` kit in the mail. The most recent release when you receive your kit is `v2.3.4`, so you print the parts from that release. Your machine's hardware is `v2.3`. If documentation or software updates happen for your hardware, you'll see other releases like `v2.3.5`, `v2.3.6`, or `v2.3.7` in the drop down above. Always use the most recent, so long as the first two numbers match your hardware (`v2.3`).

{{% /alert %}}

## What's on this site?

* How to assemble the hardware in a LumenPnP Kit
* How to connect the electrical components in a LumenPnP Kit
* How to complete basic calibration in OpenPnP

## READ BEFORE STARTING

### Referencing Source Files

As you go through this guide, you might find that you'd like to refer to the source files for a number of parts in the machine. The exported build files and source for your machine can be found on the [Releases Page](https://github.com/index-machines/index/releases). Make sure to reference the same Build Number as your machine kit!

### Machine Orientation and Terminology

Throughout this guide we'll be referring to different orientations and directions of the machine as "left, right, front, back, up, and down." In general, these words are in reference to the typical view of the machine, facing it directly, as shown below.

{{< container-image path="hero-alpha-min.png" alt="" >}}

We'll also refer to putting the machine "back on its haunches." This refers to a feature of the LumenPnP where it can be lifted up by the front rail and let to rest upright on its back feet. This orientation is tremendously helpful for installing things to the staging plate and plugging things into the motherboard. Whenever putting your machine back, make sure the Y gantry is pushed all the way to the back of the machine to prevent backdriving the Y stepper motor driver. An image of this orientation is below.

{{< container-image path="IMG_0893.JPG" alt="" >}}
{{< container-image path="IMG_0894.JPG" alt="" >}}

### Help

If you find that there's something unclear in this documentation, please [submit a ticket on Github](https://github.com/index-machines/index/issues/new/choose) about it! Select the "Index Documentation Issue" template. You can also file an issue using the link in the upper right of any page on this site. We're trying to make this as clear and understandable as possible, so every issue you tag helps us make it better for everyone else. You can also check out the [Discord server](https://discordapp.com/invite/TCwy6De) and ask questions to the community.

### Timing

Expect assembly to take about **eight hours** provided all parts are printed and ready to use.

### Tools Needed

* M2 Allen Wrench (Long, ball-end)
* M2.5 Allen Wrench (Long, ball-end)
* M3 Allen Wrench (Long, ball-end)
* M4 Allen Wrench (Long, ball-end)
* Small Phillips Screwdriver
* Small Flathead Screwdriver
* Soldering Iron and Solder
* Needle-nose Pliers
* Mallet
* Flush Cutters
* Wire Stripper
* Measuring Tape
* Calipers
* Hot Air

Let's dive in!
