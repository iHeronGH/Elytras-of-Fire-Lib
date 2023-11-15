#> eoflib:config/settings/admin/confirm_admin_status
#
# Confirms if the user is still an Elytras of Fire admin.

#region
    # Relaunch settings page
execute if entity @s[tag=eoflib.admin] run trigger eof.settings set 2

    # Do not change if not an EoF admin
execute if entity @s[tag=!eoflib.admin] run tellraw @s [{"text": "", "color": "red"}, {"text": "\n[", "color": "gray"}, "E", {"text": "o", "color": "gold"}, "F", {"text": "]", "color": "gray"}, {"text": " You do not have permission to edit the admin settings for Elytras of Fire. Contact an admin if this is incorrect.", "color": "red"}]

#endregion
