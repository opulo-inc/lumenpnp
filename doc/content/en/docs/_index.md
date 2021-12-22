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

{{< alert color="warning" title="Caution" >}}
The project is under active development and it is not suggested to build an Index unless you want to participate in the development efforts. When preparing to build, please make sure you do your research and are involved in the project via Discord and GitHub.
{{< /alert >}}

## What is the Index?

The Index is an open source Pick and Place project led by Stephen Hawes. The Index is designed to be low cost and suited towards [mid-scale manufacturing](http://stephenhawes.com/level-2-manufacturing/).

TODO add picture
{{< container-image path="PXL_20210226_145056775.jpg" alt="A completed index" >}}

## What does it do?

The Index is capable of placing parts as small as 0402. It is currently set up to use strip feeders, but development around active, powered feeders is ongoing.

It is completely open source and hackable. The main controller has three AUX ports, allowing anyone to add on peripherals or communicate with other machines.

## What's on this site?

* How to assemble the hardware in an Index Kit
* How to connect the electrical components in an Index Kit
* How to configure your machine in OpenPnP
* How to run a job using OpenPnP

## Some things to know before starting

### Machine Orientation and Terminology

Throughout this guide we'll be referring to different orientations and directions of the machine as "left, right, front, back, up, and down." In general, these words are in reference to the typical view of the machine, facing it directly. For clarity, below is an image with these phrases annotated along with the machine's cartesian axes and directions.

TODO(annotated pic of directions and coordinates)

We'll also refer to putting the machine "back on its haunches." This refers to a feature of the Index where it can be lifted up by the front rail and let to rest upright on its back feet. This orientation is tremendously helpful for installing things to the staging plate and plugging things into the motherboard. An image of this orientation is below.

TODO(haunches pic)

### Referencing Source Files

As you go through this guide, you might find that you'd like to refer to the source files for a number of parts in the machine. The exported build files for your machine can be found on the [Releases Page](https://github.com/index-machines/index/releases). Make sure you download the same Build Number as your machine kit! Alternatively, you can check the actual source for your machine by looking through the github repo tags and finding the tag that corresponds with your Build Number.

### Help

If you find that there's something unclear in this documentation, please **submit a ticket on github** about it! We're trying to make this as clear and understandable as possible, so every issue you tag helps us make it better for everyone else. You can also check out the **discord server** and ask questions to the community.

### Tools needed
* measuring tape
* hot air

Let's dive in!

