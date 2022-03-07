---
title: "Bottom Camera Position"
linkTitle: "Bottom Camera Position"
weight: 70
type: docs
description: >
  Setting the position of your bottom camera
---

Now that we know the offset from the top camera to the nozzle, we can use the nozzle to set our bottom camera position.

1. Select the bottom camera in the device tree. Click on the `Position` menu tab.

2. Click on the icon with the red nozzle in blue circle to jog the nozzle to the bottom camera position. This should get it pretty close, but it likely won't be exact. It's also possible that the tip of the nozzle is not in focus from the fisheye calibration step; adjust the bottom camera focus by turning the lens until the nozzle tip is sharp and in focus. Make sure that the Z height is at 61mm when you do this. That's the height that we lift the nozzle to for vision operations so that we can get larger components into the field of view. 61mm is not hard-coded anywhere; you can make it closer if you don't need bottom vision on larger parts that require a bigger field of view. Just make sure your focal range matches the Z height of your bottom camera position, and you're all set.

3. Jog the nozzle to be perfectly centered over the bottom camera, and click on the blue nozzle icon to capture the position (see image below). Your bottom camera position is now saved!

{{< container-image path="images/capture-bottom-cam.png" alt="" >}}


