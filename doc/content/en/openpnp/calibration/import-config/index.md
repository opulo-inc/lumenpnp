---
title: "Importing Config Files"
linkTitle: "Importing Config Files"
weight: 1
type: docs
description: >
  Install OpenPNP and import default config
---


1. First off, you need OpenPnP installed on your machine! Make sure to download OpenPnP 2.0 for your machine. [OpenPNP 2.0](https://openpnp.org/downloads/)

2. From here, you could set up your machine from scratch using the [OpenPnP Wiki](https://github.com/openpnp/openpnp/wiki/User-Manual), but we've done a lot of the hard work for you and made a configuration file that has all of the transferrable configuration already set to go. Among the assets included in your Build Number's Release, download `Source Code (zip)`, unzip it, and then open the `openpnp` folder to find the premade configuration files.

3. Now it's time to import the default configuration for your LumenPnP. OpenPnP saves configuration files in different places depending on your operating system. This folder has a period in front of its name, meaning it's hidden! The folder is still there, it just won't show up in your file explorer. You might need to do something with your settings to get it to show up. If you're on Windows, click [here](https://support.microsoft.com/en-us/windows/show-hidden-files-0320fe58-0117-fd59-6851-9b7f9840fdb2) for instructions, and [here](https://www.macworld.co.uk/how-to/show-hidden-files-mac-3520878/) if you're on Mac.

The information below about how to find the config files directory on your computer is pulled from [the OpenPnP Wiki](https://github.com/openpnp/openpnp/wiki/User-Manual#configuration-files).


>Configuration files are located in your home directory, under a subdirectory called .openpnp2.
>
>On Mac this will typically be /Users/[username]/.openpnp2.
>
>On Windows 2000, XP and 2003 it will be C:\Documents and Settings\[username]\.openpnp2.
>
>On Windows Vista and above it's C:\Users\[username]\.openpnp2.
>
>Configuration files are in XML format and can be edited by hand in a text editor. You should shutdown OpenPnP before editing files by hand as OpenPnP will rewrite the configuration files on exit.
>
>There are three primary configuration files. They are:
>
>machine.xml: Contains the primary configuration for the entire system, including information about the machine, cameras, feeders, nozzles, etc.
>
>parts.xml: A portable parts database. As you define parts (components) in OpenPnP they are stored here.
>
>packages.xml: A portable packages database. Component package information including shape and dimensions are stored here.

Once you've found your .openpnp2 folder, drop the machine.xml, parts.xml, and packages.xml files into it. If you already have parts and packages configured from previous usage of OpenPnP, you can just drop in the machine.xml file.
