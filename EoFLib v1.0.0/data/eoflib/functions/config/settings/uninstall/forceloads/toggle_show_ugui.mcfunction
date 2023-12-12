#> eoflib:config/settings/uninstall/forceloads/toggle_show_ugui
#
# Toggle forceloads being deleted upon uninstall.

#region
    # Toggle 
function eoflib:config/settings/uninstall/forceloads/toggle

    # Relaunch settings
trigger eof.settings set 3
function eoflib:config/settings/admin/confirm_admin_status

#endregion
