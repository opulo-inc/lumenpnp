---
title: "Nozzle Offset Calibration"
linkTitle: "Nozzle Offset Calibration"
weight: 60
type: docs
description: >
  Calibrating the offset of the nozzle from the top camera
---

Now we need to tell OpenPnP how far the nozzle is away from the center point of the top camera. OpenPnP has a built in "wizard" to help set this offset, so we'll use that to help us do it. You can read the OpenPnP docs about this step [here](https://github.com/openpnp/openpnp/wiki/Setup-and-Calibration%3A-Nozzle-Setup#head-offsets).

**NOTE:** OpenPnP has some new methods of calibration using a secondary fiducial at a different Z height, and a small piece of paper. If you'd like to explore this method of calibration, you can find the OpenPnP docs about this process [here](https://github.com/openpnp/openpnp/wiki/Calibration-Solutions#calibrating-precision-camera-to-nozzle-offsets). This process requires [making and installing a calibration rig](https://github.com/openpnp/openpnp/wiki/Vision-Solutions#calibration-rig), [3D Units per Pixel calibration](https://github.com/openpnp/openpnp/wiki/3D-Units-per-Pixel), and [Advanced Camera Calibration](https://github.com/openpnp/openpnp/wiki/Advanced-Camera-Calibration).

1. Select your nozzle in the device tree, and click on the `Offset Wizard` menu option. Leave the `Include Z?` box unchecked. Read the instructions that OpenPnP provides in this window.

{{< container-image path="images/Screen Shot 2022-05-19 at 2.17.07 PM.png" alt="" >}}

2. You can follow OpenPnP's instructions using putty or flour, or you can use your homing fiducial. The rest of this page explains how to do this process with your homing fiducial.

3. Using an N045 nozzle tip, jog the nozzle so that it is just barely touching the datum board, and perfectly centered over the homing fiducial. We recommend looking for the shiny edge of the gold fiducial poking out from under the nozzle tip to determine if you've centered it correctly. 

{{< container-image path="images/PXL_20220519_181926227.jpg" alt="" >}}
{{< container-image path="images/PXL_20220519_181952658.jpg" alt="" >}}
   
4. Now, click the `Store nozzle mark position` button.
  
{{< container-image path="images/Screen Shot 2022-05-19 at 2.20.06 PM.png" alt="" >}}

5. It's important that you don't navigate away from the nozzle menu in the device tree during this; it'll wipe your stored nozzle mark position. Now, jog the nozzle up, and jog the top camera to the homing fiducial. Center it exactly on the fiducial, and click the `Calculate nozzle offset` button. Hit the `Apply` button in the bottom right. You've now stored the nozzle offset!

{{< container-image path="images/Screen Shot 2022-05-19 at 2.22.08 PM.png" alt="" >}}



