#> eoflib:config/settings/uninstall/storages/toggle_show_ugui
#
# Toggle storages being deleted upon uninstall.

#region
    # Toggle 
function eoflib:config/settings/uninstall/storages/toggle

    # Relaunch settings
trigger eof.settings set 3
function eoflib:config/settings/admin/confirm_admin_status

#endregion
