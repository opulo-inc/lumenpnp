---
title: "Connect to the Computer"
linkTitle: "Connect to the Computer"
weight: 10
description: >-
     Instructions on how to test connecting your Index to the computer
---

## Motherboard
First, connect your Index to your computer using the motherboard's USB-C port. Next, manually move the Y gantry all the way to the front of the machine, and the X gantry all the way to the left. Then, power up your Index by plugging in the provided power brick.

{{< alert color="info" title="Caution" >}}
The motherboard will not show up on your computer if not powered up through the screw terminal port. USB power is not used to prevent overdrawing current from your computer's USB port. Make sure you're powering the board from the screw terminal and not just connecting over USB.
{{< /alert >}}

Now, it's time to check and see if your computer recognizes the motherboard. We're going to use CNCjs to check this, but feel free to use any other tool you'd like. [Download a CNCjs](https://github.com/cncjs/cncjs/releases) release and install.

Open CNCjs and in the `Connection` wigit, select the `Marlin` tab. Click the refresh button next to the `Port` dropdown, and click the dropdown to see if your computer found the board. If you're on Windows, the port should look like `COM1` or something similar, Mac should look like `/dev/tty.usbserial00000`, and Linux should look like `/dev/tty.ACM0`. 

Keep the Baud Rate at 115200, and click the Open button. If you see text enter the `Console` wigit and you see the line "", you've successfully connected to your Index!

## Cameras

