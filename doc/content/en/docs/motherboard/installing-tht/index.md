---
title: "Install THT Components"
linkTitle: "Install THT Components"
weight: 1
description: >-
     Instructions about how to install the THT components into a LumenPnP Motherboard
---

There are five types of connectors that need to be soldered into your motherboard. We'll go over each one, and how to solder them in place.

{{< container-image path="images/IMG_0655.JPG" alt="" >}}
{{< container-image path="images/IMG_0689.JPG" alt="" >}}

## Screw Terminal
In your connector bag you'll find a screw terminal connector. This provides power to the machine, and goes into the `J12` footprint on the upper-right corner of the board. Ensure that the openings that accept the power cables are facing outwards.

{{< container-image path="images/IMG_0674.JPG" alt="" >}}

## IDC Connectors
The IDC connectors are the larger, black connectors in your connector bag. There are only two sizes, a 2x3 for feeder communication, and three 2x6 for the auxillary ports. Be sure to solder them the correct orientation. The slot on the connector should match up with the silkscreen.

{{< container-image path="images/IMG_0682.JPG" alt="" >}}
{{< container-image path="images/IMG_0683.JPG" alt="" >}}

## JST XH Connectors
The bulk of the connectors on the board are JST XH connectors. These come in two, three, and four pin variations. The two pin connectors are for the mosfets, the three pin connectors are for the servos, limit switches, and ring lights, and the four pin connectors are for the stepper motors.

{{% alert color="danger" title="WARNING" %}}
The 4-pin JST XH connector for the Y2 motor (the one right next to the Y silkscreen indicator) **needs to be rotated 180 degrees from what the silkscreen dictates**. This one should be soldered in reverse, opposite of the silkscreen indication. Refer to the image below for reference.
{{% /alert %}}

{{< container-image path="images/IMG_0679.JPG" alt="" >}}
{{< container-image path="images/IMG_0678.JPG" alt="" >}}
{{< container-image path="images/IMG_0680.JPG" alt="" >}}

{{< container-image path="images/PXL_20220223_154720151.jpg" alt="" >}}

## USB A Connectors
There are three USB A connectors that need to be soldered into the board as well. Two of these are for the webcams, and the third is for future functionality. We recommend soldering the large structural tabs in place first, then soldering the four data pins afterward.

{{< container-image path="images/IMG_0677.JPG" alt="" >}}

## Stepper Motor Driver Headers
The last connectors that need to be soldered into the board are the 1x8 Dupont 0.1" headers for the stepper motor drivers. Two connectors need to be soldered for each driver. We recommend soldering a single pin in place first while getting the connector to stay flat, then do the rest of the pins after the orientation is solidified. Orientation does not matter for these connectors.

{{< container-image path="images/IMG_0684.JPG" alt="" >}}

