---
title: "Running a Job"
linkTitle: "Running a Job"
weight: 3
type: docs
resources:
- src: "**.png"
- src: "**.jpg"
description: >
  Running a Job in OpenPnP
---

Congratulations! Your machine is now calibrated, configured, and ready to have a job loaded up!

OpenPnP documentation will take you from here, but these topics are the ones we recommend you read and pursue first:

* [Further Calibration](https://github.com/openpnp/openpnp/wiki/Issues-and-Solutions)
  * Your machine is calibrated and you should have good results placing parts after completing the prior steps. However, there's an "Issues and Solutions" tab in OpenPnP that will help you further calibrate your LumenPnP, for help with those steps we recommend reviewing the OpenPnP docs. It's highly recommended that you complete the "Calibrations Milestone" prior to using your LumenPnP in production.

* [Job Setup](https://github.com/openpnp/openpnp/wiki/User-Manual#job-setup)
  * This is an incredibly useful document, illustrating the difference between parts, packages, and placements, and how to import information about your parts into the software. It shows the UI and explains what lots of things do, along with walking you through setting up a job. There's also information about setting up feeders. We use mainly ReferenceTrayFeeder and ReferenceStripFeeder, and find they work well for us! Soon we'll have our own powered feeder for the LumenPnP, which will have a selectable feeder type in OpenPnP, but that's still to come.

* [Vacuum Sensing](https://github.com/openpnp/openpnp/wiki/Setup-and-Calibration%3A-Vacuum-Sensing)
  * Your machine is capable of detecting a mispick using its onboard vacuum sensors. This can help speed up the process of trying to pick another part, instead of waiting for vision to detect it. Be sure to reference the actuator test Gcode in the assembly docs for the snippets needed to request the vacuum value from the motherboard.

