---
title: "MM/pixel Calibration"
linkTitle: "MM/Pixel Calibration"
weight: 50
type: docs
description: >
  Setting the millimeters per pixel value in OpenPnP
---

Nicely done so far! You've got your homing fiducial all set up, and have played around with tweaking a vision pipeline. This next step calibrates the relationship between pixels and millimeters to make our cameras more accurate.

1. First, let's calibrate the top camera. Jog the camera over to your datum board. Select your machine's head in the `Machine Setup` tab, and click the icon highlighted below to move there. There are some markers on it that will help us do this exact calibration.
{{< container-image path="images/Screen Shot 2022-05-17 at 4.27.00 PM.png" alt="" >}}


2. Select your top camera in the device tree. Under the `General Configuration` tab, scroll down to `Units Per Pixel`. Under the X and Y Object Dimensions, type in the number 5. Then click the `Measure` button. A box with drag handles will appear in the camera viewfinder. Drag the box so that it perfectly outlines one of the gold boxes on the datum board; they are exactly 5mm x 5mm. Once you have it perfectly outlined, click `Confirm`. New numbers should populate the Units per Pixel fields, but they should be relatively close to what you found in there to begin with. 

3. To confirm, jog around by clicking on various locations on your datum board in the top camera viewfinder and see how accurate the centerpoint of the camera view gets to where you clicked. If it's inaccurate, try doing the calibration again or tweaking the values in the fields.

4. Now we'll calibrate the bottom camera. For this, we'll use a nozzle tip! Put an N24 nozzle on the CP40 Holder, and under your bottom camera's settings in the device tree, under the `Position` tab, click the icon with the red nozzle in the blue circle (Hover text says "Position the tool over the center of the location"). This should move your nozzle over the camera. Don't worry if it's not exactly centered; we'll fix this in a later step. It's important you don't try to fix this now. Manually jog it over the center of your bottom camera by clicking on the bottom camera viewfinder.

5. Now, do the same calibration that you did for the top camera, but instead of inputting 5 in the X and Y fields, input 4. Drag your bounding box around the nozzle tip so that it's perfectly tangent to the edges, and press `Confirm`. Your pixels per millimeter are now calibrated! Try jogging around using the viewfinder and check to see if the reticle is moving where you click.


