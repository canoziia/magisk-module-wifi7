# Default Configuration
DEFAULT_CC="US"
CONFIG_FILE="$MODPATH/wifi_config.prop"

ui_print "- Setting default Country Code: $DEFAULT_CC"
echo "TARGET_CC=$DEFAULT_CC" > "$CONFIG_FILE"

# Set permissions
set_perm_recursive "$MODPATH" 0 0 0755 0644
set_perm "$MODPATH/service.sh" 0 0 0755
set_perm "$MODPATH/action.sh" 0 0 0755
set_perm "$MODPATH/system.prop" 0 0 0644

ui_print "- Installation Complete"
ui_print "- You can change the Country Code later using the 'Action' button in Magisk."
