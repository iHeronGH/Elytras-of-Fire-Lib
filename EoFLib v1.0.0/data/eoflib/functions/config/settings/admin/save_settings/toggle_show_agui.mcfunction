#> eoflib:config/settings/admin/save_settings/toggle_show_agui
#
# Disable the persistance of admin settings on world reload.

#region
    # Disable setting saves
function eoflib:config/settings/admin/save_settings/toggle

    # Relaunch settings
trigger eof.settings set 2
function eoflib:config/settings/admin/confirm_admin_status

#endregion
