# Magisk Module: WiFi 7 / 6GHz Enabler

This Magisk module attempts to enable 6GHz WiFi and Hotspot capabilities on supported Android devices by forcing a specific country code.

## Features
- ✅ Enables 6GHz WiFi band (WiFi 6E / WiFi 7)
- ✅ Enables 6GHz Hotspot support
- ✅ Country code selectable via Magisk "Action" button
- ✅ Automatic Updates via Magisk app
- ✅ Uses `cmd wifi force-country-code enable` for reliable WiFi configuration
- ✅ No volume key interaction needed during installation

## Requirements
- Android 13+ (Recommended for better 6GHz support)
- Rooted with Magisk (v28.0+ required for Action Button) or KernelSU
- Hardware support for WiFi 6E/7 (SoC and Antenna)

## Installation
1. Download the latest zip from Releases.
2. Install via Magisk Manager.
3. Reboot.
4. (Optional) Open Magisk, go to Modules, find this module, and click the **Action** button to switch country codes if needed.

## Disclaimer
This module modifies system properties and WiFi configurations. Use at your own risk. 6GHz functionality is heavily dependent on your device's hardware and driver implementation.
