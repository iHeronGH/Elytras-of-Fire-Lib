#> eoflib:config/settings/admin/debug_mode/disable_show_agui
#
# Disable Debug Mode.

#region
    # Disable Debug Mode
function eoflib:config/settings/admin/debug_mode/disable

    # Relaunch settings
trigger eof.settings set 2
function eoflib:config/settings/admin/confirm_admin_status

#endregion
