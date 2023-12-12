#> eoflib:config/settings/admin/debug_mode/enable_show_agui
#
# Disable Debug Mode.

#region
    # Disable Debug Mode
function eoflib:config/settings/admin/debug_mode/enable

    # Relaunch settings
trigger eof.settings set 2
function eoflib:config/settings/admin/confirm_admin_status

#endregion
