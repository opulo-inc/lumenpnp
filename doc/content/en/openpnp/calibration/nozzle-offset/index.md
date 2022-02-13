---
title: "Nozzle Offset Calibration"
linkTitle: "Nozzle Offset Calibration"
weight: 60
type: docs
description: >
  Calibrating the offset of the nozzle from the top camera
---

Now we need to tell OpenPnP how far the nozzle is away from the center point of the top camera. OpenPnP has a built in "wizard" to help set this offset, so we'll use that to help us do it.

1. Select your nozzle in the device tree, and click on the `Offset Wizard` menu option.

2. Leave the `Include Z?` box unchecked. Now you have a couple choices. You can follow OpenPnP's instructions using putty or flour, or you can use your homing fiducial. We recommend trying our version, and following OpenPnP's instructions as a backup.

3. Using an N045 nozzle tip, jog the nozzle so that it is just barely touching the datum board, and perfectly centered over the homing fiducial. We recommend looking for the shiny edge of the gold fiducial poking out from under the nozzle tip to determine if you've centered it correctly. Now, click the `Store nozzle mark position` button.

4. It's important that you don't navigate away from the nozzle menu in the device tree during this; it'll wipe your stored nozzle mark position. Now, jog the nozzle up, and jog the top camera to the homing fiducial. Center it exactly on the fiducial, and click the `Calculate nozzle offset` button. You've now stored the nozzle offset!



