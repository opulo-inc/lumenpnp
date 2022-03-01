---
title: "Actuator Check"
linkTitle: "Actuator Check"
weight: 40
description: >-
     How to check the actuators on your LumenPnP
---

## Pumps
The first and most important actuator on your LumenPnP is the vacuum pump. We can check this by sending more Gcode to the machine. Send the first line to turn on the pump, and the second one to turn it back off.
```
M106 ;turn MOS1 on
M107 ;turn MOS1 off
```
## Valves
We can also check the blowoff valve. This can be tested using the Gcode below. Listen for a slight click when each of the commands are run; this is the sound of the valve actuating!
```
M106 P1 S255   ;turn MOS2 on
M107 P1        ;turn MOS2 off
```
It's worth noting that MOS3 and MOS4 can be actuated using the following commands (when something is plugged into those ports):
```
M106 P2 S255   ;turn MOS3 on
M107 P2        ;turn MOS3 off
M106 P3 S255   ;turn MOS4 on
M107 P3        ;turn MOS4 off
```

## Ring Lights
Check the ring lights using the Gcode below. Note that both lights are controlled together, with the same command. You can edit the color of the lights by adjusting the R, U, and B terms in the command.
```
M150 P255 R255 U255 B255   ;turn on ring lights
M150 P0                    ;turn off ring lights
```
## Vacuum Sensors
Now we can check the vacuum sensors.  First, check the value from the first vacuum sensor before and after a vacuum is pulled to check that it's working correctly.
```
M3426 G4 C1 I1      ;read vac 1 value
M106                ;turn on the pump
;cover the nozzle with your finger and wait two seconds
M3426 G4 C1 I1      ;read vac 1 value again
M107                ;turn off the pump
```
The two values returned should be separated by a couple thousand units.

It's also worth noting the command for reading the second vacuum sensor. Until pneumatics for a second nozzle are plumbed in, the second one will only ever read ambient pressure.
```
M3426 G4 C2 I1   ;read vac 2 value
```
