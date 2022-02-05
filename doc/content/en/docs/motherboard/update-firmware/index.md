---
title: "Update the Firmware"
linkTitle: "Update the Firmware"
weight: 30
description: >
  Flash Marlin onto the motherboard.
---

Your motherboard comes with a correct build of Marlin pre-installed, but if you'd like to update the firmware or change settings, this will help you do so!

## Necessary Components

* Index Mobo
* USB-A / USB-C cable

## Process

1. Download the [latest Marlin firmware](https://github.com/MarlinFirmware/Marlin/archive/2.0.x.zip) and unzip it
2. Install [VSCode](https://code.visualstudio.com/) and its [PlatformIO extension](https://marketplace.visualstudio.com/items?itemName=platformio.platformio-ide)
3. Open Marlin firmware's folder on VSCode
4. Grab Marlin configuration files ([this](https://github.com/MarlinFirmware/Configurations/raw/import-2.0.x/config/examples/Index/REV_03/Configuration.h) and [this](https://github.com/MarlinFirmware/Configurations/raw/import-2.0.x/config/examples/Index/REV_03/Configuration_adv.h)) and replace the files on Marlin/Marlin folder with those new ones

5. Edit the platformio.ini file to indicate which board you're uploading to. Update `default_envs` to read `Index_Mobo_Rev03`.

{{< container-image path="images/Screen Shot 2022-02-04 at 7.27.25 PM.PNG" alt="BOOT and RESET buttons" >}}

5. Attach the Index Mobo to your computer with the USB cable.

6. Boot the STM32 in DFU Mode
    1. Press and hold the `BOOT` button
    2. Press the Reset button
    3. Release the Reset button
    4. Release the `BOOT` button

{{< container-image path="images/IMG_0749.JPG" alt="BOOT and RESET buttons" >}}

7. Upload firmware to the board:
{{< container-image path="images/vscode_marlin_env.png" alt="Upload firmware via PIO" >}}

8. Wait for the process to finish:
{{< container-image path="images/PIO_upload_done.png" alt="PIO firmware upload done" >}}

9. Press Reset on the board. Now it should show up as a COM/Serial Port on your PC:

Windows:
{{< container-image path="images/STM32_COM_port_connected.png" alt="STM32 shows up as a COM/Serial Port" >}}

Linux:
{{< container-image path="images/linux_lsusb.png" alt="STM32 shows up on lsusb" >}}

### **Troubleshooting DFU Upload:**

* Make sure, that your board shows up correctly in DFU mode: 

Windows:
{{< container-image path="images/dfu_mode_device_manager.png" alt="STM32 in DFU mode in Device Manager" >}}

Linux:
{{< container-image path="images/linux_lsusb_bootloader.png" alt="STM32 in DFU mode in lsusb" >}}

#### **Alternative method to upload:**

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

8. Done! Now you just have to disconnect the ST-Link and press Reset on the board (img/firmware_download_done.png" alt="Firmware flashing success" >}}
