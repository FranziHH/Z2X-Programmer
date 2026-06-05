# ⚠️ Important Notice / Archive Mirror

This repository is an unmodified copy (mirror) of the original **Z2X-Programmer** project.

The original author (**PeterK78**) has deleted their GitHub account and the original repository. Since this software is actively used by several users and was released under the **GNU General Public License v3**, this mirror was created to keep the source code available to the community.

* **Original URL (now defunct):** https://github.com/PeterK78/Z2X-Programmer
* **Status:** The code is 100% unmodified. All credits go to PeterK78.

---

<img src="Assets/appiconfg.svg" width="100"/>

# Z2X-Programmer
[![Z2X-Programmer Documentation](Assets/Z2X_Programmer-Badge-Documentation.svg)](Docs/Programmbeschreibung%20Z2X-Programmer.pdf)
[![Download Z2X-Programmer](Assets/Z2X_Programmer-Badge-Download.svg)](../../releases)
[![Download Z2X-Programmer](Assets/Z2X_Programmer-Badge-Download-Dev.svg)](../../actions)

Z2X-Programmer is an application to configure locomotive and function decoders by using a Roco / Fleischmann Z21 compatible digital command station. 
The application is aimed at beginner level users who want to configure the most essential functions of their decoders in a simple and intuitive way. 

>[!NOTE]
>The application is currently in a beta state.

## Z2X-Programmer in the press
* [Digitale Modellbahn 2-2025](Assets/DiMo_2025_02_014-015_HH_Z2X-Programmer.pdf)

## Overview

The application provides the following features:

* Configuration of various addresses
* Configuration of drive properties
* Configuration of motor properties
* Configuration of the function keys
* Configuration of selected sound functions
* Configuration of selected lighting functions
* Display of decoder information such as decoder name, software version, etc.
* Configuration of the protocols
* Configuration of security functions
* Maintenance functions
* etc.

> A detailed list of all supported functions can be found on the following page: [List of supported decoder features](Docs/en/SupportedDecoderFeatures_en.md).

User-friendliness is supported with the following functions:

* The user interface can switch to dark mode
* The user interface language is available in German and English
* A search function helps you to find the functions you need

## Supported decoder manufacturers
Z2X-Programmer is universal and not limited to a specific decoder manufacturer. The application offers a wide range of configuration options that are available for all decoders. Which configuration options are used by a decoder is defined in a decoder specification file. The following decoder specification files are currently available:

* RCN225 compatible decoders
* ZIMO MS sound decoder
* ZIMO MX sound decoder
* ZIMO MX function decoder
* ZIMO MN decoder
* Doehler & Haass PD series (Experimental)
* Minitrix (Experimental)
* PIKO SmartDecoder 4.1 (Experimental)
* etc.

You can create your own decoder specification file at any time.

>[!NOTE]
> At the moment the focus is on Z21 digital command stations and ZIMO decoders - this is the hardware I currently own.

## Screenshots
![Changing the motor characteristics](Assets/Z2X-Programmer-MotorCharacteristics.png "Changing the motor characteristics")

![Changing the drive characteristics](Assets/Z2X-Programmer-DriveCharacteristics.png "Changing the drive characteristics")

![Configuring function keys](Assets/Z2X-Programmer-FunctionKeys.png "Configuring function keys")

![Search](Assets/Z2X-Programmer-Search.png "Search")

![Android](Assets/Z2X-Programmer-Android.png "Android")

## Documentation

* [Installation instructions](Docs/en/InstallationInstructions_en.md)
* [Getting started](Docs/en/GettingStarted_en.md)
* [List of supported decoder features](Docs/en/SupportedDecoderFeatures_en.md)
* [Recommended Z21 settings](Docs/en/RecommendedZ21Settings_en.md)
* [Locomotive list](Docs/en/LocomotiveList_en.md)
* [FAQ](Docs/en/FAQ_en.md)

## Notes

* Z2X-Programmer is not intended for experts. Experts are recommended to use the manufacturer-specific programming tools.

## Supported operating systems and languages
* Z2X-Programmer is currently available for Microsoft Windows 11 64Bit and Android 9 (and higher).

>[!NOTE]
>A 32-bit version for older Windows versions is also available, but no support is offered for this version.

* Further ports are possible (iOS, MacOS etc.), but not currently planned.
* The software offers multilingual support, but so far only German and English are available.

## Technical stuff

* Z2X-Programmer is build with Microsoft [.NET Multi-platform App UI (.NET MAUI)](https://dotnet.microsoft.com/en-us/apps/maui)

## License

* The original source code in this repository is licensed under the GNU GPLv3 license.
* Microsoft, Z21, Fleischmann, ZIMO and Roco are registered trademarks of their respective companies.