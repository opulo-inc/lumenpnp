---
title: "Connecting to Your Machine"
linkTitle: "Connecting to Your Machine"
weight: 9
type: docs
description: >
  Getting set up and connected to your LumenPnP using OpenPnP
---

Awesome! Now we've got OpenPnP installed on your computer, and we've got the default configuration loaded up, our next step is getting connected to the machine using OpenPnP and getting familiar with the UI.

1. Connect your machine to your computer using the included USBC cable, and open OpenPnP on your computer. You should now see the OpenPnP UI:

{{< container-image path="images/openpnp-ui.png" alt="" >}}

2. Before we can connect to the machine, we need to tell OpenPnP which USB ports to use for communication, and for Camera feeds. Click on the `Machine Setup` tab, under `Drivers` click on `GcodeDriver GcodeDriver`, and in the `Configuration` tab select the correct serial port. Macs will have a port in the format `cu.usbmodemXXXXXXX`, Windows in the format `COM2`, and Linux in the format `ttyACM0`. 

{{< container-image path="images/Screen Shot 2022-05-17 at 3.10.58 PM.png" alt="" >}}

3. Now we'll set up the cameras. The big red "X" in the camera views means that OpenPnP doesn't know where to find the webcam feed. First we'll add the bottom camera. Click on the `Machine Setup` tab, under `Cameras` click on `OpenPnpCaptureCamera Bottom`, and in the `Device Settings` tab choose `PnP Bottom Camera (PnP Bottom Camera)` from the `Device` dropdown. Also, select a 1280x720 10fps option in the `Format` dropdown. The exact options in the `Format` dropdown depends on your computer. Hit the "Apply" button in the bottom right.

{{< container-image path="images/Screen Shot 2022-05-17 at 3.31.26 PM.png" alt="" >}}

{{% alert color="warning" title="Camera Connection Issues" %}}

If you have trouble getting one or both of the webcams to show up in this dropdown, it might mean that your computer's USB circuitry is not able to handle streaming both webcam feeds at once. Try unplugging the webcam's USB cable from the motherboard and directly into another USB port on your computer.

{{% /alert %}}

4. Next we'll do the top camera. This one is a bit more hidden in the OpenPnP device tree. Click on the `Machine Setup` tab, under `Heads` -> `ReferenceHead H1` -> `Cameras`, click on `OpenPnpCaptureCamera Top`, and in the `Device Settings` tab choose `PnP Top Camera (PnP Top Camera)` from the `Device` dropdown. Also, select a 1280x720 10fps option in the `Format` dropdown. Hit the "Apply" button in the bottom right.

{{< container-image path="images/Screen Shot 2022-05-17 at 3.43.05 PM.png" alt="" >}}

5. Click the green power button in the Machine Controls section of the UI to connect to your machine.
  
{{< container-image path="images/Screen Shot 2022-05-17 at 4.14.47 PM.png" alt="" >}}

6. The power button should turn red, and OpenPnP has connected to your machine. You should also see both webcam feeds as shown below. (If you don't see any, or just one, under the `Cameras` section, select the `Show All Horizontal` option from the dropdown.)

{{< container-image path="images/Screen Shot 2022-05-17 at 4.16.20 PM.png" alt="" >}}

7. Save your OpenPnP settings with File -> Save Configuration.

