# Index PnP
The Index Pick and Place is an open source pick and place machine to aid in [Mid-Scale Manufacturing](http://stephenhawes.com/level-2-manufacturing/). 

![Index](img/IndexPnP_1.0.0.png)

This project is **under development**. It is not currently in a stable state. Development is active and ongoing, but this is not yet a finished design. If you'd like to build one to help find bugs and design issues, please do!

The Index is designed to be low-cost enough that someone could buy or build one to support making production runs at home or as a small business. It runs using OpenPnP.

The Index will eventually be able to do every component of PCBA manufacturing. It is currently capable of picking parts and placing them, but eventually the Index will support solder paste dispensing, automatic reflow, and even AOI. 

Along with the Index machine itself, the project also comes along with feeders designed to work with the Index. Although they were designed with the Index in mind, they can work with any OpenPnP pick and place with a 20mm x 20mm rail for mounting.

A full Bill of Materials for the project can be found [here](https://docs.google.com/spreadsheets/d/1N7jMZ2upi8-9_jjJnl2xC9bYtZuE1wX5Qzoa-qs21eY/edit#gid=476120456).

The Index's development process is being cataloged in a series of videos. A playlist of these can be found [here](https://www.youtube.com/playlist?list=PLIeJXmcg1baLBz3x0nCDqkYpKs2IWGHk4).

## System Overview
The Index is controlled with [OpenPnP](https://github.com/openpnp/openpnp). OpenPnP generates gcode based on PCB design files and sends it over to a custom motherboard running a modified version of Marlin. This handles controlling the motors, pump, limit switches, feeders, etc.

The motherboard communicates with the feeders over RS-485. After the feeder receieves a command from the motherboard, it sends a confirmation or error message back. This is then sent back to OpenPnP. Situations where the feeder would send an error message back would be a tape runout or jam. 

The mechanical design of the system is largely based on the OpenBuilds ACRO 55. It is a V-Slot/roller motion control system with two motors controlling the Y gantry, one controlling the X, and one controlling the Z. All parts are optomized for FDM 3D printing.

## Contributing
If you would like to contribute to the project, awesome! Here's some general guidelines for how to participate in development:

* Pull Requests should only be made for software and electrical changes. The CAD for the Index currently lives in Fusion 360, which does not play nice with git. If you have a change you'd like to make to the CAD, file an issue using the "CAD Update" template. Go to the "Issues" tab, click "New issue," click "Get started" in the CAD Update box, then fill in your issue information. This is currently clunky, but eventually the mechanical CAD for the Index will be switched to FreeCAD and will be tracked in git along with everything else. 
* PRs should be self-contained nuggets of improvement. Each commit to master should stand alone as a viable Index build.
* Please be as descriptive as possible about your PR and what it is you changed. If your PR represents an actual test you did on a build you're doing yourself, awesome! Please include any information about how the update performed on your build.
* Ensure that your PR is adhering to the general system architecture outlined in "System Overview" above. For example, don't file a PR that switches all feeder communication to SPI, or removes a huge feature from the machine. Systemic changes are decided in the [STR Discord Server](https://discordapp.com/invite/TCwy6De). If you'd like to weigh in on those decisions or help make them, feel free to pop in! 

## Building an Index
This is an unfinished design. Builds at this time should be thought of as helping the R&D process, and not for the end result of having a fully operational pick and place.

### Ordering PCBs
Many boards in the design are also used in a mechanical way, meaning some specifics of how the boards are ordered matters more than usual.

#### Default Configuration
- Board Thickness: 1.6mm
- Pad Plating: Any
- Silk/Mask: Any

#### Indexing Wheel Configuration
- Board Thickness: 1mm
- Pad Plating: ENIG
- Silk/Mask: White/Matte Black

### 3D Printing
During development of the Index, all parts were printed in PLA. A few parts in particular require quite a high strength if being printed. Of course, every printer runs a bit different, and these are just guidelines to illustrate the necessary strength difference between different parts.

#### Default Settings
- 3 shells
- 20% infill
- 5 Top/Bottom layers

#### Gantry Part Settings
- 4 shells
- 30% infill
- 5 Top/Bottom layers















