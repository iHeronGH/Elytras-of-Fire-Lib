#> eoflib:config/settings/uninstall/scoreboards/toggle_show_ugui
#
# Toggle scoreboards being deleted upon uninstall.

#region
    # Toggle 
function eoflib:config/settings/uninstall/scoreboards/toggle

    # Relaunch settings
trigger eof.settings set 3
function eoflib:config/settings/admin/confirm_admin_status

#endregion
