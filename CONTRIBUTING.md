# Contributing
If you would like to contribute to the project, awesome! Here's some general guidelines for how to participate in development:

* PRs should be self-contained nuggets of improvement. Each commit to master should stand alone as a viable Index build.
* Please be as descriptive as possible about your PR and what it is you changed. If your PR represents an actual test you did on a build you're doing yourself, awesome! Please include any information about how the update performed on your build.
* Ensure that your PR is adhering to the general system architecture outlined in "System Overview" in the README. For example, don't file a PR that switches all feeder communication to SPI, or removes a huge feature from the machine. Systemic changes are decided in the [STR Discord Server](https://discordapp.com/invite/TCwy6De). If you'd like to weigh in on those decisions or help make them, feel free to pop in!
* The master branch contains the most reliable version of the design, not the most up to date. Features are developed in separate branches, then merged in once they're confirmed to be as good as or better than what's in master.
* "Exports" (compiled binaries, STLs, gerber files, etc) are not necessary to be generated for every new commit on a feature branch, but every commit to master should have an updated set of exports.
* If you add a part to the BOM, make sure that your PR includes an update to the BOM reflecting this change. Ensure that the part that you're adding is relatively inexpensive and easily accessible (either being a ubiquitous part, or there being multiple sources globally).

Below are standards in the project that are meant to reduce unique part count, ensure ease of assembly, and provide easy sourcing for all parts.

## Mechanical
* CAD is done in FreeCAD. All parts are modeled separately in their own FCDStd file, and then put into a final assembly file.
* Stick to Metric where possible
* Use M3 and M5 hardware whenever possible.
* Favor captive nuts as opposed to heat set inserts. They are easier to install, much cheaper, and much less likely to pull out.
* All custom parts should heavily consider printability in FDM. Try to allow parts to fit within a 150mm X 150mm X 150mm build volume. Follow guidelines here for modifying parts so that they can print support-free.


## Electrical
* All PCB design is done in KiCAD 5.1.9
* 2-layer boards are standard. 4-layer boards are used if it truly is required for routing, power delivery, RF, or other specific reasons. Spending a bit more time to route a board is worth the saved cost for all the folks ordering them.
* All passives should be 0805, unless absolutely necessary. This is to aid in reliability of being picked and placed, but also so that folks can easily hand solder if they wish.
* For parts such as connectors, jacks, and other large parts, use a hybrid footprint. This means using a footprint that allows for both a THT and an SMD part to occupy the same space.

## Software
* All code in the project is currently written in C++.
* Marlin is the source of the firmware, with modifications.
