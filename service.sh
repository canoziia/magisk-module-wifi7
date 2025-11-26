#!/system/bin/sh
MODDIR=${0%/*}

# Wait for boot to complete
while [ "$(getprop sys.boot_completed)" != "1" ]; do
  sleep 1
done

# Read config
if [ -f "$MODDIR/wifi_config.prop" ]; then
  . "$MODDIR/wifi_config.prop"
else
  TARGET_CC="US"
fi

# Apply Country Code
# Method 1: cmd wifi (Works on most modern Android)
cmd wifi force-country-code enabled $TARGET_CC

# Method 2: setprop (Legacy/Backup)
resetprop ro.boot.wificountrycode $TARGET_CC
resetprop wifi.country $TARGET_CC

# Force enable 6GHz overlay configs if possible
# These are often device specific but setting them doesn't hurt
resetprop config.disable_wifi_6ghz false
resetprop ro.wifi.6ghz.enabled true

# Restart WiFi to apply changes (Optional, might disconnect user)
# svc wifi disable
# sleep 2
# svc wifi enable
