---
title: "Flash Motherboard"
linkTitle: "Flash Motherboard"
weight: 40
description: >
  Flash Marlin onto the motherboard.
---

With the frame complete it is time to configure the software side of things before hooking up the motherboard to the machine. This procedure was designed for Linux but it should work as well for macOS and Windows.

## Necessary Components

* Index Frame
* Index Mobo
* USB-A cable

## Process

1. Install VS Code and the Platform IO (PIO) Plugin
2. Clone the Index repository with: `git clone https://github.com/sphawes/index`
3. Open the PIO project in `pnp/code/firmware_marlin`
4. Attach the Index Mobo to your computer with the USB-A cable
5. Boot the STM32 in DFU Mode
    1. Press and hold BOOT0
    2. Press Reset
    3. Release Reset
    4. Now you can release BOOT0

6. Use "Upload" (*arrow to the right* in the bottom left corner) to upload to the board:
{{< container-image path="images/f7685fd40b0d9864.png" alt="" >}}

7. Wait for the process to finish:
{{< container-image path="images/14a0fb34b7f3144c.png" alt="" >}}

8. Press Reset on the board. Now it should show up as a COM Port on your PC.

### **Troubleshooting DFU Upload:**

* Make sure, that your board shows up correctly in DFU mode: 
{{< container-image path="images/c480dc32c0509b9e.png" alt="" >}}
* Edit the PIO config file (platformio.ini, located in the project folder):

1. Search for "STM32F407VE_black", backup the old config and then replace the existing config with the following
2. Notice that "upload_port           = 0483:df11" is commented out. This setting caused issues, at least for some users. After disabling it, uploading worked.

``` ini
#
# STM32F407VET6 with RAMPS-like shield
# 'Black' STM32F407VET6 board - https://wiki.stm32duino.com/index.php?title=STM32F407
# Shield - https://github.com/jmz52/Hardware
#
[env:STM32F407VE_black]
platform          = ${common_stm32.platform}
extends           = common_stm32
board             = blackSTM32F407VET6
# upload_port       = 0483:df11
upload_protocol   = dfu
upload_command    = dfu-util -a 0 -s 0x08000000:leave -D "$SOURCE"
board_build.f_cpu = 12000000L
build_flags       = ${common_stm32.build_flags}
  -D ARDUINO_BLACK_F407VE
   -D PIO_FRAMEWORK_ARDUINO_ENABLE_CDC
   -D USBD_USE_CDC_COMPOSITE
  ; -D MENU_USB_SERIAL 
  ; -D MENU_SERIAL=SerialUSB
  ; -D USBCON 
   -D USBD_VID=0x0483
   -D USBD_PID=0x5740
   -DLSE_VALUE=32768U
   -DHSE_VALUE=12000000U
  ; -D USB_MANUFACTURER="Unknown"
  -D USB_PRODUCT=\"BLACK_F407VE\"
  ; -D HAL_PCD_MODULE_ENABLED
  ;-D PIO_FRAMEWORK_ARDUINO_SERIAL_WITHOUT_GENERIC
  -D PIO_FRAMEWORK_ARDUINO_ENABLE_CDC
  ;-D PIO_FRAMEWORK_ARDUINO_NANOLIB_FLOAT_PRINTF
  ;-D PIO_FRAMEWORK_ARDUINO_USB_HIGHSPEED_FULLMODE
   
  

extra_scripts     = ${common.extra_scripts}
  pre:buildroot/share/PlatformIO/scripts/generic_create_variant.py
lib_ignore        = SoftwareSerial
```

#### **Things to check if the board doesn't show up as "STM32 BOOTLOADER":**

* Check if the USB hub works by connecting devices to other ports. This is not an absolute guarantee that the connection to the STM32 works though.
* Check if all solder joints look fine
* Check if all voltages are present
* Keep in mind that blank STM32s should still appear as a USB device, even if they have no firmware loaded onto them
* Check the 8MHz crystal oscillator of the SMT32. It's correct operation is important for normal operation of the DFU. Wrong frequency and / or incorrect load capacitors can cause issues.

#### **Alternative method to upload:**

This method requires an ST-Link (V2 Clone or equivalent). Additionally you need the software  [STM32CubeProgrammer](https://www.st.com/en/development-tools/stm32cubeprog.html) by ST. This method is a bit more involved and takes longer than just using the DFU mode. 

1. Compile (build) the project normally with PIO

1. This generates a .bin-file that contains the firmware
2. Connect your board to your ST-Link through the SWD header on board
3. Start STM32CubeProgrammer
4. Connect to the MCU:
{{< container-image path="images/3a1798928d41bb18.png" alt="" >}}

5. Click on **Open file** and navigate to the **firmware.bin** file in *PROJECT_DIRECTORY/.pio/build/STM32F407VE_black*
{{< container-image path="images/efe1d5f076b9be61.png" alt="" >}}

6. Click on **Download**. This will flash the SMT32F4 with the provided firmware
{{< container-image path="images/767cc275e3916de2.png" alt="" >}}

7. Done! Now you just have to disconnect the ST-Link and press Reset on the board (img/3948425b05249e54.png" alt="" >}}


## Configure OpenPnP



Duration: 00:00

### **Necessary Components**

### **Get Software (Windows)**

1. Download [OpenPNP 2.0](https://openpnp.org/downloads/)


