---
title: "Automatic Toolchanger Calibration"
linkTitle: "Automatic Toolchanger Calibration"
weight: 80
type: docs
description: >
  Calibrating automatic toolchanger movements
---

Throughout the course of a job, you will find that you need multiple different size nozzle tips to pick different sized parts. You can always have OpenPnP prompt you to do this manually, but there's a feature for automatic nozzle swapping that can just do it for you! In this optional step, we'll set it up. Perform the following steps for each of the nozzle tips you'd like to enable it for. We recommend reading the [OpenPnP Wiki page](https://github.com/openpnp/openpnp/wiki/Nozzle-Tip-Changer) about this as well. Before starting, put the labeled nozzle tips into the holder in their respective labeled slots. Also make sure to lubricate the end of your nozzle holder with the lubrication packet included with your nozzles. It helps to insert the nozzle holder into all of the nozzle tips multiple times in order to break in the rubber O-rings, and lubricate the inside of the nozzle tips.

1. Select the nozzle tip you're setting up under the `Nozzle Tips` menu in the device tree. Select the `Tool Changer` tab.

2. Now we can start capturing positions. The way automatic nozzle changing works is by replaying four position commands either forward or backward, to either load or unload a nozzle tip, respectively. We're going to start with the last position, because it's easiest for getting our Z height correct.

3. Jog your nozzle with the relevant nozzle tip loaded to just in front of your nozzle rack, in front of the slot for that nozzle tip. Adjust the Z height until it's clear it'll slide into the rack. Also ensure that it's aligned in the Y axis so that only a X movement would be necessary to slot it into place. Capture the nozzle position for the `Last Location`.

4. Now we're going to slowly jog the nozzle tip into the nozzle rack. Make sure you're only jogging in the X axis for a clean action. Jog by increments of 0.1mm until you see the nozzle tip pop completely into place. Try to ensure there's no lateral strain on the nozzle holder. If there is, we'll see this in a later step and can correct it then. Capture the `Third Location` nozzle position.

5. The next position is for making sure that the nozzle tip is completely seated on the CP40 holder during insertion. Jog the Z axis down two millimeters. This is not a hard and fast value, if you find that a larger or smaller value gets the nozzle tip seated completely, feel free to use that value instead. The spring in the CP40 holder will take up these few millimeters. Capture the `Second Location` nozzle position.

6. Now jog the Z axis up 30 millimeters. This is the clearance position where the nozzle holder is getting ready for the plunge. Capture the `First Location` nozzle position.

7. You can now play through the positions by clicking on the "move nozzle to position" buttons in order. Tune any values in the fields as necessary to ensure you get a clean and straight insertion.

8. Now that your positions are set, you can enable automatic tool changing in OpenPnP. You can find this checkbox as shown in the image below.

{{< container-image path="images/enable-toolchanger.png" alt="" >}}

9. If you'd like to clone these positions for every nozzle tip in the rack, you can use the ["Cloning Settings" section in the OpenPnP docs](https://github.com/openpnp/openpnp/wiki/Nozzle-Tip-Changer#cloning-settings) to help you.
