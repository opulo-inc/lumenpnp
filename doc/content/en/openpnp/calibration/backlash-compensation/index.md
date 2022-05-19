---
title: "Backlash Compensation"
linkTitle: "Backlash Compensation"
weight: 51
type: docs
description: >
  Calibrating Backlash Compensation
---

Now we can have OpenPnP run its automatic backlash compensation routine to make all head movements more accurate. Read the OpenPnP docs page about this step [here](https://github.com/openpnp/openpnp/wiki/Calibration-Solutions#calibrating-backlash-compensation).

1. First, we'll select the axis we want to calibrate backlash compensation for. Under the `Machine Setup` tab, select `ReferenceControllerAxis x` under `Axis`. Then select the `Backlash Compensation` tab.
   
{{< container-image path="images/Screen Shot 2022-05-18 at 3.30.43 PM.png" alt="" >}}

2. Next, click the `Calibrate now` button. The machine will go through a long routine (between 5-15 minutes) where it measures the machine's backlash, and determines the best settings to account for it.

3. When it's done, you'll see the output data from the calibration. We suggest selecting `OneSidedOptimizedPositioning` for the Compensation Method, but experiment with the different options to see which gives you the best results.

{{< container-image path="images/Screen Shot 2022-05-18 at 3.32.55 PM.png" alt="" >}}

4. Perform steps 1 - 3 but with the Y axis instead.

