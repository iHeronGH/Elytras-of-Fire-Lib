#> eoflib:config/settings/uninstall/teams/toggle_show_ugui
#
# Toggle teams being deleted upon uninstall.

#region
    # Toggle 
function eoflib:config/settings/uninstall/teams/toggle

    # Relaunch settings
trigger eof.settings set 3
function eoflib:config/settings/admin/confirm_admin_status

#endregion
