#!/system/bin/sh
MODDIR=${0%/*}

# Define available options (Must match customize.sh for consistency)
OPTIONS="NL EU DE JP US CA CN"

# Read current config
if [ -f "$MODDIR/wifi_config.prop" ]; then
  . "$MODDIR/wifi_config.prop"
else
  TARGET_CC="NL"
fi

# Find next option
NEXT_CC=""
FOUND_CURRENT=0
FIRST_OPT=""

for OPT in $OPTIONS; do
  if [ -z "$FIRST_OPT" ]; then
    FIRST_OPT=$OPT
  fi
  
  if [ "$FOUND_CURRENT" -eq 1 ]; then
    NEXT_CC=$OPT
    FOUND_CURRENT=0
    break
  fi
  
  if [ "$OPT" == "$TARGET_CC" ]; then
    FOUND_CURRENT=1
  fi
done

# If we reached the end or didn't find current, loop back to first
if [ -z "$NEXT_CC" ]; then
  NEXT_CC=$FIRST_OPT
fi

# Apply new Country Code
echo "-----------------------------------"
echo "Switching Country Code"
echo "From: $TARGET_CC"
echo "To:   $NEXT_CC"
echo "-----------------------------------"

# 1. Update config file
echo "TARGET_CC=$NEXT_CC" > "$MODDIR/wifi_config.prop"

# 2. Apply via cmd wifi
cmd wifi force-country-code enabled $NEXT_CC
echo "Applied via cmd wifi: $?"

# 3. Apply via resetprop
resetprop ro.boot.wificountrycode $NEXT_CC
resetprop wifi.country $NEXT_CC
echo "Applied via resetprop"

# 4. Re-apply 6GHz flags just in case
resetprop config.disable_wifi_6ghz false
resetprop ro.wifi.6ghz.enabled true

echo "-----------------------------------"
echo "Done! New Country Code: $NEXT_CC"
echo "You may need to toggle WiFi off/on."
