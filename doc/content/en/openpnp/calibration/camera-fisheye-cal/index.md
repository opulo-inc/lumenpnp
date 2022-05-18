---
title: "Camera Fisheye Calibration"
linkTitle: "Camera Fisheye Calibration"
weight: 10
type: docs
description: >
  Applying fisheye calibration to the cameras
---

Awesome! Now we're connected to the machine, our next step is calibrating the fisheye out of the camera lenses. You can reference the orignal OpenPnP documentation about this step [here](https://github.com/openpnp/openpnp/wiki/Camera-Lens-Calibration).

1. In the `Machine Setup` tab, find your bottom camera that you edited in the last step.

2.  In the camera settings menu, click the `Lens Calibration` tab, then click "Start Lens Calibration".

3. OpenPnP is now looking for a very specific pattern of dots which it uses to figure out how fisheyed the view is, and correct it. Hold your datum board over the bottom camera and using the viewfinder, move the calibration pattern around the camera's field of view until OpenPnP tells you that it's gathered enough photos. Make sure it's in focus of the camera, otherwise it'll have a hard time finding the pattern. If the focal distance is too close such that you can't get the whole pattern in focus and in the field of view, screw in the lens a few turns and test again.

If you're having a hard time getting the camera to pick up on the pattern on the datum board, you can always print out the original calibration pattern recommended by OpenPnP, which you can find [here](https://nerian.com/support/calibration-patterns/). Be sure to download the "Circle Grid Camera Calibration Patterns" image.

{{< alert color="info" title="Tip" >}}
To see both camera views at the same time, click on the dropdown in the top left of the UI and select "Show All Horizontal".
{{< /alert >}}

6. Now, we'll do the top camera. Go through the same process of configuring the camera in OpenPnP, but instead of finding the top camera in the "Camera" menu, you'll find it under `Heads -> Reference Head H1 -> Cameras`. You'll need to jog your Y axis towards the front of the machine to provide space to put the datum board for this calibration step.

{{< container-image path="images/Screen Shot 2022-01-11 at 12.40.48 PM.png" alt="" >}}
