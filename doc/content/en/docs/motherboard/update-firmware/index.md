---
title: "Update the Firmware"
linkTitle: "Update the Firmware"
weight: 30
description: >
  Flash Marlin onto the motherboard.
---

**This step is optional.** Your motherboard comes with a correct build of Marlin pre-installed, but if you'd like to update the firmware or change settings, this will help you do so!

### Using the Auto Build Marlin VSCode Extension

1. Download the [latest Marlin firmware](https://github.com/MarlinFirmware/Marlin/archive/refs/heads/bugfix-2.0.x.zip) and unzip it.
2. Install [VSCode](https://code.visualstudio.com/) and its [PlatformIO extension](https://marketplace.visualstudio.com/items?itemName=platformio.platformio-ide).
3. Open Marlin firmware's folder on VSCode.
4. Grab Marlin configuration files ([Configuration.h](https://github.com/MarlinFirmware/Configurations/raw/bugfix-2.0.x/config/examples/Index/REV_03/Configuration.h) and [Configuration_adv.h](https://github.com/MarlinFirmware/Configurations/raw/bugfix-2.0.x/config/examples/Index/REV_03/Configuration_adv.h)) and replace the files in the Marlin/Marlin folder with those new ones.
5. Install the Auto Build Marlin plugin using this [Marlin Documentation page](https://marlinfw.org/docs/basics/auto_build_marlin.html).
6. Try to build Marlin using the build button with the hammer icon as shown below:

{{< container-image path="images/marlin-auto-build-ui.PNG" alt="Marlin auto-build UI" >}}

7. If this is successful, attach the LumenPnP Mobo to your computer with the USB cable.

8. Boot your motherboard into DFU Mode
    1. Press and hold the `BOOT` button
    2. Press the Reset button and hold for 10 seconds
    3. Release the Reset button and wait for 10 seconds
    4. Release the `BOOT` button
  {{< container-image path="images/IMG_0749.JPG" alt="BOOT and RESET buttons" >}}

  If you have a hard time getting your board to enter DFU mode, instead try powering off the machine entirely, holding the 'BOOT' button, plugging in power, waiting 10 seconds, then release the `BOOT` button.

9. Now, press the upload button as shown below.
{{< container-image path="images/marlin-auto-build-ui.PNG" alt="Marlin auto-build UI" >}}

10. Wait for the process to finish:
  {{< container-image path="images/PIO_upload_done.png" alt="PIO firmware upload done" >}}

11. Press Reset on the board. Now it should show up as a COM/Serial Port on your PC:

- Windows:
  {{< container-image path="images/STM32_COM_port_connected.png" alt="STM32 shows up as a COM/Serial Port" >}}
- Mac/Linux:
  {{< container-image path="images/linux_lsusb.png" alt="STM32 shows up on lsusb" >}}

### Manually Configuring PlatformIO

1. Download the [latest Marlin firmware](https://github.com/MarlinFirmware/Marlin/archive/refs/heads/bugfix-2.0.x.zip) and unzip it.
2. Install [VSCode](https://code.visualstudio.com/) and its [PlatformIO extension](https://marketplace.visualstudio.com/items?itemName=platformio.platformio-ide)
3. Open Marlin firmware's folder on VSCode
4. Grab Marlin configuration files ([Configuration.h](https://github.com/MarlinFirmware/Configurations/raw/bugfix-2.0.x/config/examples/Index/REV_03/Configuration.h) and [Configuration_adv.h](https://github.com/MarlinFirmware/Configurations/raw/bugfix-2.0.x/config/examples/Index/REV_03/Configuration_adv.h)) and replace the files in the Marlin/Marlin folder with those new ones.

5. Edit the platformio.ini file to indicate which board you're uploading to. Update `default_envs` to read `Index_Mobo_Rev03`.
  {{< container-image path="images/Screen Shot 2022-02-04 at 7.27.25 PM.PNG" alt="BOOT and RESET buttons" >}}

6. Attach the LumenPnP Mobo to your computer with the USB cable.

7. Boot your motherboard into DFU Mode
    1. Press and hold the `BOOT` button
    2. Press the Reset button and hold for 10 seconds
    3. Release the Reset button and wait for 10 seconds
    4. Release the `BOOT` button
  {{< container-image path="images/IMG_0749.JPG" alt="BOOT and RESET buttons" >}}

  If you have a hard time getting your board to enter DFU mode, instead try powering off the machine entirely, holding the 'BOOT' button, plugging in power, waiting 10 seconds, then release the `BOOT` button.

8. Upload firmware to the board:
  {{< container-image path="images/vscode_marlin_env.png" alt="Upload firmware via PIO" >}}

9. Wait for the process to finish:
  {{< container-image path="images/PIO_upload_done.png" alt="PIO firmware upload done" >}}

10. Press Reset on the board. Now it should show up as a COM/Serial Port on your PC:

- Windows:
  {{< container-image path="images/STM32_COM_port_connected.png" alt="STM32 shows up as a COM/Serial Port" >}}
- Mac/Linux:
  {{< container-image path="images/linux_lsusb.png" alt="STM32 shows up on lsusb" >}}

### Flashing Factory Firmware

If you've put new firmware on your motherboard, but just want to get back to the firmware that your machine was flashed with, check the release for your build number and download the .bin firmware file attached to it. Put your board into DFU mode as described above, connect to your computer, and flash the binary to the board using the following command:

```shell
dfu-util -D ~/path/to/firmware.bin -s 0x08000000 -a 0
```

### Troubleshooting

If you aren't able to upload, you can check to see if your motherboard is booting into DFU mode correctly:

- Windows:
  {{< container-image path="images/dfu_mode_device_manager.png" alt="STM32 in DFU mode in Device Manager" >}}

- Mac/Linux:
  {{< container-image path="images/linux_lsusb_bootloader.png" alt="STM32 in DFU mode in lsusb" >}}

Also, reference [the Marlin instructions for uploading](https://marlinfw.org/docs/basics/install_platformio.html). Be sure to use `bugfix-2.0.x` if uploading using these instructions.

#### Alternative Method (Not Recommended)

This method requires an ST-Link (V2 Clone or equivalent). Additionally you need the software  [STM32CubeProgrammer](https://www.st.com/en/development-tools/stm32cubeprog.html) by ST. This method is a bit more involved and takes longer than just using the DFU mode.

1. Compile (build) the project normally with PIO
2. This generates a .bin-file that contains the firmware
3. Connect your board to your ST-Link through the SWD header on board
4. Start STM32CubeProgrammer
5. Connect to the MCU:
  {{< container-image path="images/connect_STM_to_programmer.png" alt="Connecting to the STM programmer" >}}

6. Click on **Open file** and navigate to the **firmware.bin** file in *PROJECT_DIRECTORY/.pio/build/STM32F407VE_black*
  {{< container-image path="images/open_firmware_bin_file.png" alt="Opening the compiled firmware file" >}}

7. Click on **Download**. This will flash the SMT32F4 with the provided firmware
  {{< container-image path="images/start_firmware_download.png" alt="Downloading (flashing) the firmware" >}}

8. Done! Now you just have to disconnect the ST-Link and press the reset button on the board.
