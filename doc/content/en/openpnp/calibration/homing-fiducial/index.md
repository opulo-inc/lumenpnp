---
title: "Homing Fiducial"
linkTitle: "Homing Fiducial"
weight: 20
type: docs
description: >
  Mounting datum board and testing the homing fiducial
---

Now that we've done the fisheye calibration, we can mount the datum board to the staging plate. The datum board is a reference point for everything else you'll do with the machine.

1. Using the datum board, four M3x16mm screws, four M3 nuts, and one datum board mount (FDM-0055), mount the datum board on the staging plate as shown in the image below, with the fisheye calibration pattern facing down. You should see a gold grid of lines and a fiducial in the center of the Opulo logo facing upwards. Tighten this down very well; this will define the center point for the entire machine. 

{{< container-image path="images/Screen Shot 2022-01-11 at 12.51.47 PM.png" alt="" >}}

2. Now we'll home the machine using the home icon in OpenPnP. It will move to the limit switches, and get a rough zero position. Don't worry if the icon is yellow; this just means the machine does not know its home position yet.

{{< container-image path="images/Screen Shot 2022-05-18 at 2.01.42 PM.png" alt="" >}}

3. Now that your datum board is mounted well, it's time to find out exactly where it is, and capture that position. First, turn on your LED lights using the `LED` button under `Actuators` under your camera view, and clicking the `On` button. 
   {{< container-image path="images/Screen Shot 2022-05-18 at 2.05.18 PM.png" alt="" >}}
   
4. Under the `Machine Setup` tab in OpenPnP, select your machine's head, switch the `Homing Method` to `ResetToFiducialLocation`. This tells the machine that it should be using the fiducial to get a more precise home position.
   {{< container-image path="images/Screen Shot 2022-05-18 at 2.11.30 PM.png" alt="" >}}
   
5. Then click the icon with the two blue circles and the red brackets around them (shown below). This will move the top camera to approximately where your datum board is mounted. Manually jog the head so that the center marking in your top camera view is perfectly centered on the fiducial in the center of the Opulo logo. Your top camera's focus might be inaccurate from the previous step calibrating out the fisheye. If the fiducial is blurry, twist the lens until it's as sharp as you can get it. 
  
{{< container-image path="images/Screen Shot 2022-05-17 at 4.27.00 PM.png" alt="" >}}

6. Your view from the top camera might not be bright enough, or it might be overexposed. Either way, we need to set your camera's exposure. Go back to your Top Camera in the device tree in the Machine Setup tab in OpenPnP, and click on `Device Settings`. Click the checkbox next to `Exposure`, then uncheck it. This will set your exposure automatically based on what's in view (which should be your datum board), and then turn off auto exposure to lock in the settings.

{{% alert color="danger" title="For Mac Users" %}}

Due to an issue with the camera driver in OpenPnP, some Mac users might notice that these settings are greyed out for you. There's a fantastic open-source application called [CameraController](https://github.com/Itaybre/CameraController) that can be used to edit these settings!

{{% /alert %}}

7. Once the homing fiducial is centered, in focus, and properly exposed, capture the position using the button with the blue circle surrounded by the blue brackets under the settings for your machine's head (shown below). Your homing fiducial position is now set. 

{{< container-image path="images/capture.png" alt="" >}}

8. Now you can test out fiducial homing. Try clicking the home icon and watch your machine home using the limit switches, then move the top camera over the homing fiducial and find its exact location.

9. If you find that the machine is having a hard time finding the homing fiducial, you might need to edit the Vision Pipeline for it. You can do that by going to the `Machine Setup` tab, and selecting `Fiducial Locator` under `Vision`. Click the `Edit` button to adjust the computer vision settings.
{{< container-image path="images/Screen Shot 2022-05-18 at 2.22.00 PM.png" alt="" >}}

10. There is quite a bit to tuning a vision pipeline, and you should take a look at the [OpenPnP documentation](https://github.com/openpnp/openpnp/wiki/Bottom-Vision). But there are a few things you can pretty easily tweak to get up and running. First, let's check out what the vision pipeline *thinks* it's seeing. In the window that just popped up, click on the row with "DrawCircles" in the Stage column. The image will show you every circle detected from the pipeline, as shown below. If there is more than one, or if the one shown is not perfectly hugging the fiducial, there are tweaks to be made. The image below shows a correctly tuned pipeline, with a single circle encircling the fiducial.

{{< container-image path="images/Screen Shot 2022-05-18 at 2.41.29 PM.png" alt="" >}}

11. The first variable to address is the threshold value. To access these settings, click on the row with "Threshold" under the Stage column. If the threshold is too low, then we won't be isolating the area around the fiducial enough. A too low of a threshold value will look like the image below:

{{< container-image path="images/Screen Shot 2022-05-18 at 2.25.13 PM.png" alt="" >}}

Raise the value until the fiducial is a clean, solid circle, as shown below:

{{< container-image path="images/Screen Shot 2022-05-18 at 2.25.59 PM.png" alt="" >}}

11. Next, we can check and see how many circles the pipeline is finding. We want it to only be finding one, and have it hug the fiducial exactly. Click on the row with "DetectCirclesHough" in the Stage column. In the image below, you can see from the list in the bottom right that two circles have been detected. We can solve this by adjusting "param2" and bumping the value up. The lower the value, the more circles are detected. If the diameter of the circles detected is incorrect, adjust the maxDiameter and minDiameter settings.

{{< container-image path="images/Screen Shot 2022-05-18 at 2.26.48 PM.png" alt="" >}}

With a higher value in the "param2" field, we only detect a single circle.

{{< container-image path="images/Screen Shot 2022-05-18 at 2.27.08 PM.png" alt="" >}}

12.  Lastly, we can confirm that our edits result in accurate fiducial detection. Once again click on the row with "DrawCircles" in the Stage column. The image will show you every circle detected from the pipeline. Confirm there is only one, and it is perfectly hugging the fiducial as shown below.

{{< container-image path="images/Screen Shot 2022-05-18 at 2.41.29 PM.png" alt="" >}}

13. Exit out of the pipeline editing UI, save your changes, and try to home again. With your vision pipeline tuned, the machine should find the homing fiducial on your machine and center the crosshairs of the top camera on it. 

