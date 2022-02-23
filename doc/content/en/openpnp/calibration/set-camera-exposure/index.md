---
title: "Set Camera Exposure"
linkTitle: "Set Camera Exposure"
weight: 20
type: docs
description: >
  Mounting datum board and setting camera exposure
---

Now we need to set the exposure for both cameras. Setting this defines our vision pipelines down the road, so it's important to set these early on and set them well.

1. The datum board you used for fisheye calibration can now be mounted to the staging plate! We're going to be using it for setting the top camera exposure. Using the datum board, four M3x16mm screws, four M3 nuts, and one datum board mount (FDM-0055), mount the datum board on the staging plate as shown in the image below, with the fisheye calibration pattern facing down. You should see a gold grid of lines and a fiducial in the center of the Opulo logo facing upwards. Tighten this down very well; this will define the center point for the entire machine. 

{{< container-image path="images/Screen Shot 2022-01-11 at 12.51.47 PM.png" alt="" >}}

2. Now we'll home the machine, but we need to change a setting first. Under the Machine Setup tab in OpenPnP, select your machine's head, then change `Homing Method` from `ResetToFiducialLocation` to `None`. Home your machine using the home icon in OpenPnP. It will move to the limit switches, and get a rough zero position.

3. Now that your datum board is mounted well, it's time to find out exactly where it is! First, turn on your LED lights using the LED button under `Actuators` under your camera view. Under the Machine Setup tab in OpenPnP, select your machine's head, switch the `Homing Method` back to `ResetToFiducialLocation`. Then click the icon with the two blue circles and the red brackets around them. This will move the top camera to approximately where your datum board is mounted. Manually jog the head so that the center marking in your top camera view is perfectly centered on the fiducial in the center of the Opulo logo. Your top camera's focus might be inaccurate from the previous step calibrating out the fisheye. If the fiducial is blurry, twist the lens until it's as sharp as you can get it. 

4. Your view from the top camera might not be bright enough, or it might be overexposed. Either way, we need to set your camera's exposure. Go back to your Top Camera in the device tree in the Machine Setup tab in OpenPnP, and click on `Device Settings`. Click the checkbox next to `Exposure`, then uncheck it. This will set your exposure automatically based on what's in view (which should be your datum board), and then turn off auto exposure to lock in the settings.

5. Once the homing fiducial is centered, in focus, and properly exposed, capture the position using the button with the blue circle surrounded by the blue brackets under the settings for your machine's head. Your homing fiducial position is now set. 

6. Test it out! Try clicking the home icon and watch your machine home using the limit switches, then move the top camera over the homing fiducial and find its exact location.




