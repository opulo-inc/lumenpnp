---
title: "Mounting the X Gantry to the Y Gantry"
linkTitle: "Mounting the X Gantry to the Y Gantry"
weight: 50
description: >
  Attaching the X gantry to the Y gantry
---

Now that we have both gantries assembled, it's time to put them together.

## X Gantry Tensioner Bars

1. Fit the X gantry on top of the Y gantry rail. Make sure the X motor is on the left side with the front of the X gantry facing you.
  {{< alert color="warning" title="Note" >}}
  You'll find that it's hard to fit the X gantry onto the rail. This is because of a few protrusions on the back plate that hold the belt at the right distance. Loosening the M5x40mm bolts holding the two halves of the X gantry together will help it slot onto the rail.
  {{< /alert >}}
  {{< container-image path="images/Mounting-X-To-Y-Step-1.png" alt="Proper orientation of the newly attached X-axis gantry" >}}

2. Prepare two V-slot rollers. You may need to align one or both of the interior washers inside the rollers, as they can shift in shipping and block the hole for the screw. Simply push the washers back into place with a screwdriver tip.

3. With the top roller bolts still loose, slide the two {{<tooltip>}}X Gantry Tension Bars{{<definition>}}FDM-0043{{</definition>}}{{</tooltip>}} onto the bottom of the {{<tooltip>}}X Gantry prints{{<definition>}}FDM-0012 and FDM-0011{{</definition>}}{{</tooltip>}}. Slide two rollers in between them, ensuring that the holes in them line up with the holes in the {{<tooltip>}}X Gantry Tension Bars{{<definition>}}FDM-0043{{</definition>}}{{</tooltip>}}.
  {{< container-image path="images/Mounting-X-To-Y-Step-3.png" alt="Sliding on the X Gantry Tensioner Bars" >}}
  {{< container-image path="images/Mounting-X-To-Y-Step-3-2.png" alt="Slotting two V-Slot Rollers in-between the Tensioner Bars" >}}

4. Now we can secure the stack in place using two M5x40mm bolts. Pass them through the holes, and loosely tighten them into two M5 nuts in the slots on the {{<tooltip>}}X Gantry Back{{<definition>}}FDM-0012{{</definition>}}{{</tooltip>}}. Don't tighten all the way yet; we still have some adjustment to do first. You can, however, 
  {{< container-image path="images/Mounting-X-To-Y-Step-4.png" alt="Securing the tensioner bars with M5 screws" >}}
  {{< container-image path="images/Mounting-X-To-Y-Step-4-4.png" alt="Loosely threading the M5 screws into M5 nuts to hold the Tensioner Bars on." >}}
  {{< container-image path="images/Mounting-X-To-Y-Step-4-3.png" alt="Cutaway view of the new M5 screws going through the tensioner bars and V-Slot rollers and ending in the M5 nuts." >}}

5. Tighten the **top** roller bolts now that everything is in its place.
  {{< container-image path="images/Mounting-X-To-Y-Step-5.png" alt="Tightening the two top roller sandwiches" >}}

6. Now we add tension screws. These are what hold the {{<tooltip>}}X Gantry Tension Bars{{<definition>}}FDM-0043{{</definition>}}{{</tooltip>}} bars in the correct position to have proper tension along the rail. Take four M3x30mm screws and pass them through the holes in the {{<tooltip>}}X Gantry Tension Bars{{<definition>}}FDM-0043{{</definition>}}{{</tooltip>}}, and thread into the M3 nuts inserted into the {{<tooltip>}}X Gantry prints{{<definition>}}FDM-0012 and FDM-0011{{</definition>}}{{</tooltip>}}, as shown below. Make sure each screw is tightened the same amount, and that the X gantry can still move freely, but doesn't have any wiggle on the rail.
  {{< container-image path="images/Mounting-X-To-Y-Step-6.png" alt="Installing four M3 screws to tension the X Tension Bars" >}}
  {{< container-image path="images/Mounting-X-To-Y-Step-6-2.png" alt="Installing four M3 screws to tension the X Tension Bars side view" >}}

7. Tighten the M5x40mm bolts that run through the bottom set of rollers (installed in the previously) so that their position is locked.
  {{< container-image path="images/Mounting-X-To-Y-Step-4.png" alt="Securing the tensioner bars with M5 screws" >}}

## Camera and Ring Light

{{< alert color="info" title="Note" >}}
There's a piece of black electrical tape on the back of the camera PCB. Don't remove it; it is there to help isolate the camera sensor from light shining through vias in the PCB.
{{< /alert >}}

8. Before we mount the camera, we need to loosen the screw holding the lens in place. Unscrew it just enough such that you can turn the lens in and out. You might need a light grip with pliers to get it to make a full turn. (We'll need to adjust the focal length after the camera is mounted)

9. Place the ring light facing downwards into the {{<tooltip>}}Top Light Mount{{<definition>}}FDM-0015{{</definition>}}{{</tooltip>}}. The LEDs will shine down, and the white plastic wire connector will face upwards.
  {{< container-image path="images/IMG_0771.JPG" alt="Installing the Top Light into the Top Light Mount" >}}
  {{< container-image path="images/IMG_0772.JPG" alt="Installing the Top Light into the Top Light Mount side view" >}}

10. Place the {{<tooltip>}}Top Camera Mount{{<definition>}}FDM-0014{{</definition>}}{{</tooltip>}} on top of the {{<tooltip>}}Top Light Mount{{<definition>}}FDM-0015{{</definition>}}{{</tooltip>}} ensuring that the tab from the {{<tooltip>}}Top Light Mount{{<definition>}}FDM-0015{{</definition>}}{{</tooltip>}} fits onto the side opposite the arms on the {{<tooltip>}}Top Camera Mount{{<definition>}}FDM-0014{{</definition>}}{{</tooltip>}}. These two prints will pinch the top ring light in place.
  {{< container-image path="images/Mounting-X-To-Y-Step-9-ALT.png" alt="Attaching the Top Light Mount to the Top Camera Mount" >}}

11. Install the Top Camera into the {{<tooltip>}}Top Camera Mount{{<definition>}}FDM-0014{{</definition>}}{{</tooltip>}}. Make sure the connector on the back side of the camera is between the two arms of the {{<tooltip>}}Top Camera Mount{{<definition>}}FDM-0014{{</definition>}}{{</tooltip>}}.
  {{< container-image path="images/Mounting-X-To-Y-Step-11.png" alt="Inserting the Top Camera into the Top Camera Mount" >}}
  {{< container-image path="images/Mounting-X-To-Y-Step-11-2-MANUAL.png" alt="Correct location of the wire connector for the Top Camera" >}}

12. Secure the whole stack in place with four M2.5x20mm screws in the outer four holes (not the ones with a metal circle around them). Tighten them down so that all parts are tightly held together, but don't over-torque; these screws are threading into the plastic of the {{<tooltip>}}Top Light Mount{{<definition>}}FDM-0015{{</definition>}}{{</tooltip>}}.
  {{< container-image path="images/Mounting-X-To-Y-Step-12.png" alt="Screwing in the Top Camera" >}}

13. Use two M3x14mm screws to mount the Top Camera and Light subassembly onto the back of the {{<tooltip>}}X Gantry Back{{<definition>}}FDM-0012{{</definition>}}{{</tooltip>}}.
  {{< container-image path="images/Mounting-X-To-Y-Step-13.png" alt="Attaching the Top Camera assembly" >}}
