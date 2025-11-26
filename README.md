# Magisk Module: WiFi 7 / 6GHz Enabler

This Magisk module attempts to enable 6GHz WiFi and Hotspot capabilities on supported Android devices by forcing a specific country code.

## Features
- ✅ Enables 6GHz WiFi band (WiFi 6E / WiFi 7)
- ✅ Enables 6GHz Hotspot support
- ✅ Country code selectable via Magisk "Action" button
- ✅ Automatic Updates via Magisk app
- ✅ Uses `cmd wifi force-country-code enabled` for reliable WiFi configuration
- ✅ No volume key interaction needed during installation

## Requirements
- Android 13+ (Recommended for better 6GHz support)
- Rooted with Magisk (v28.0+ required for Action Button) or KernelSU
- Hardware support for WiFi 6E/7 (SoC and Antenna)

## Installation
1. Download `WiFi7_6GHz_Enabler-v1.1.2.zip` from [Releases](https://github.com/canoziia/magisk-module-wifi7/releases)
2. Install via Magisk app
3. Reboot device
4. Default country code: **NL** (Netherlands)

## Usage
### Changing Country Code
1. Open Magisk app
2. Find "WiFi 7 / 6GHz Enabler" module
3. Tap the "⚡ Action" button
4. Country code cycles: **NL → EU → DE → JP → US → CA → CN** (loop back to NL)

## Disclaimer
This module modifies system properties and WiFi configurations. Use at your own risk. 6GHz functionality is heavily dependent on your device's hardware and driver implementation.
