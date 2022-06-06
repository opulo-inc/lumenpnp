---
title: "Connect to the Computer"
linkTitle: "Connect to the Computer"
weight: 10
description: >-
     Instructions on how to test connecting your machine to the computer
---

## Motherboard

1. Connect your LumenPnP to your computer using the motherboard's USB-C port.

2. Manually move the Y gantry all the way to the front of the machine, and the X gantry all the way to the left.

3. Plug in the power supply to power up the machine

{{< alert color="warning" title="Heads Up" >}}
The motherboard will not show up on your computer if not powered up through the screw terminal port. USB power is not used to prevent overdrawing current from your computer's USB port.
{{< /alert >}}

4. Now, it's time to check and see if your computer recognizes the motherboard. We're going to use CNCjs to check this, but feel free to use any other tool you'd like. [Download CNCjs](https://github.com/cncjs/cncjs/releases), install it, and open it.

5. In the `Connection` widget, select the `Marlin` tab.

6. Click the refresh button next to the `Port` dropdown, and click the dropdown to see if your computer found the board.
     * If you're on Windows, the port should look like `COM1` or something similar
     * Mac should look like `/dev/tty.usbserial00000`
     * Linux should look like `/dev/tty.ACM0`

7. Keep the Baud Rate at `115200`, and click the Open button. If you see boot text enter the `Console` widget, you've successfully connected to your LumenPnP!

{{< alert color="warning" title="Troubleshooting" >}}
If your LumenPnP doesn't show up on the list, try some of the following steps:

1. Restart your computer
2. Check if the LumenPnP shows up in Device Manager (Windows).
3. Try another USB Port
4. Try [re-flashing firmware]({{< ref "update-firmware.md" >}})

{{< /alert >}}

## Cameras
We also need to check connecting to the cameras. CNCjs has a webcam feature, so we'll use it for this test too.

8. Find the `Webcam` tab in the bottom left of the window

9. Click on the module using the little slider icon

10. Open the widget using the carrot icon

11. Finally, click the gear and look for detected webcams in the dropdown under "Use a built-in camera or a connected webcam". You should find "PnP Top Camera" and "PnP Bottom Camera" in the dropdown. Select each one and test out the camera feed.

{{< container-image path="images/Screen Shot 2022-02-04 at 9.52.50 PM.png" alt="" >}}

{{< alert color="warning" title="Troubleshooting" >}}
If the cameras don't seem to be working, try zooming the image and toggling it on and off again. Additionally, some combinations of the USB hub chip we use in the motherboard and USB hub chips used in computers don't allow for video streaming to work for one or both cameras. If you don't see either or both cameras appear, don't worry! You can always unplug them from the motherboard and plug them directly into your computer.
{{< /alert >}}
