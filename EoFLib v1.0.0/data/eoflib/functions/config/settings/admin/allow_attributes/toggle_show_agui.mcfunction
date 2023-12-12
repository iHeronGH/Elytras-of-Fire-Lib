#> eoflib:config/settings/admin/allow_attributes/toggle_show_agui
#
# Toggle attribute toggling for all players.

#region
    # Globally toggle attributes
function eoflib:config/settings/admin/allow_attributes/toggle

    # Relaunch settings
trigger eof.settings set 2
function eoflib:config/settings/admin/confirm_admin_status

#endregion
