---
title: "Bottom Camera Position"
linkTitle: "Bottom Camera Position"
weight: 70
type: docs
description: >
  Setting the position of your bottom camera
---

Now that we know the offset from the top camera to the nozzle, we can use the nozzle to set our bottom camera position.

1. Select the bottom camera in the device tree. Click on the `Position` menu tab. Click on the icon with the red nozzle in blue circle (shown below) to jog the nozzle to the bottom camera position. 

{{< container-image path="images/Screen Shot 2022-05-19 at 2.53.57 PM.png" alt="" >}} 


2. The nozzle will now move to be pretty close to the bottom camera inspection location, but it likely won't be exact. It's also possible that the tip of the nozzle is not in focus from the fisheye calibration step; adjust the bottom camera focus by turning the lens until the nozzle tip is sharp and in focus. 

{{< container-image path="images/Screen Shot 2022-05-19 at 3.04.16 PM.png" alt="" >}}

{{< alert color="info" title="Tip" >}}
You'll notice that the Z height of the bottom camera position is at 61mm. That's the height that we lift the nozzle to for vision operations so that we can get larger components into the field of view. 61mm is not hard-coded anywhere; you can make it a smaller number if you don't need bottom vision on larger parts that require a bigger field of view. Just make sure that your bottom camera's focus matches the Z height of your bottom camera position, and you're all set.
{{< /alert >}}


1. Jog the nozzle to be perfectly centered over the bottom camera, and click on the blue nozzle icon to capture the position (see image below). Your bottom camera position is now saved!

{{< container-image path="images/Screen Shot 2022-05-19 at 3.02.58 PM.png" alt="" >}}
{{< container-image path="images/capture.png" alt="" >}}


