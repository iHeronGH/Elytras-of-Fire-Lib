#> eoflib:config/settings/admin/deactivation_timer/toggle_show_agui
#
# Disable the ability deactivation timer.

#region
    # Disable Ability Deactivation Timer
function eoflib:config/settings/admin/deactivation_timer/toggle

    # Relaunch settings
trigger eof.settings set 2
function eoflib:config/settings/admin/confirm_admin_status

#endregion
