---
title: "Index Assembly"
linkTitle: "Index Assembly"
weight: 20
resources:
- src: "**.png"
- src: "**.jpg"
menu:
  main:
    weight: 20
---

## What is the Index?

The Index is an open source Pick and Place project led by [Opulo](https://www.opulo.io/). The Index is designed to be low cost and suited towards [mid-scale manufacturing](http://stephenhawes.com/level-2-manufacturing/).

{{< container-image path="hero-alpha-min.png" alt="" >}}

The Index is capable of placing parts as small as 0402. It is currently set up to use strip feeders, but development around active, powered feeders is ongoing.

It is completely open source and hackable. The main controller has three AUX ports, allowing anyone to add on peripherals or communicate with other machines.

{{% alert title="Note" %}}
This documentation corresponds with a specific machine Build Number (for example, v2.1.3). Make sure that the machine you are building correlates with the version of the docs you are reading. Check the drop down in the upper right and select the correct Build Number. If you're building from a kit, check the included pamphlet for your Build Number.
{{% /alert %}}

## What's on this site?

* How to assemble the hardware in an Index Kit
* How to connect the electrical components in an Index Kit
* How to configure your machine in OpenPnP
* How to run a job using OpenPnP

## Some things to know before starting

### Your Machine's Build Number
We keep track of versions of the pick and place using a Build Number. You can find your machine's Build Number on the pamphlet in your kit. This website, all the 3d printable files, and all the circuit boards are designed to work together using the same Build Number, so it's important you know which one you're building and use the files from the same one!

A Build Number looks like `v2.1.4`, with a lowercase "v" and three numbers dictating the version using [semantic versioning](https://semver.org/).

### Referencing Source Files

As you go through this guide, you might find that you'd like to refer to the source files for a number of parts in the machine. The exported build files and source for your machine can be found on the [Releases Page](https://github.com/index-machines/index/releases). Make sure to reference the same Build Number as your machine kit!

### Machine Orientation and Terminology

Throughout this guide we'll be referring to different orientations and directions of the machine as "left, right, front, back, up, and down." In general, these words are in reference to the typical view of the machine, facing it directly, as shown below.

{{< container-image path="hero-alpha-min.png" alt="" >}}

We'll also refer to putting the machine "back on its haunches." This refers to a feature of the Index where it can be lifted up by the front rail and let to rest upright on its back feet. This orientation is tremendously helpful for installing things to the staging plate and plugging things into the motherboard. Whenever putting your machine back, make sure the Y gantry is pushed all the way to the back of the machine to prevent backdriving the Y stepper motor driver. An image of this orientation is below.

{{< container-image path="IMG_0893.JPG" alt="" >}}
{{< container-image path="IMG_0894.JPG" alt="" >}}

### Help

If you find that there's something unclear in this documentation, please [submit a ticket on Github](https://github.com/index-machines/index/issues/new/choose) about it! Select the "Index Documentation Issue" template. You can also file an issue using the link in the upper right of any page on this site. We're trying to make this as clear and understandable as possible, so every issue you tag helps us make it better for everyone else. You can also check out the [Discord server](https://discordapp.com/invite/TCwy6De) and ask questions to the community.

### Timing

Expect assembly to take about **six hours** provided all parts are printed and ready to use.

### Tools Needed
* M2 Allen Wrench
* M2.5 Allen Wrench
* M3 Allen Wrench
* M4 Allen Wrench
* Small Phillips Screwdriver
* Small Flathead Screwdriver
* Soldering Iron and Solder
* Needlenose Pliers
* Mallet
* Flush Cutters
* Wire Stripper
* Measuring Tape
* Calipers
* Hot Air

Let's dive in!
