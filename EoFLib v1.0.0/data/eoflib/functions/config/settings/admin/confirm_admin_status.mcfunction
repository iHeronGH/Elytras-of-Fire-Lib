#> eoflib:config/settings/admin/confirm_admin_status
#
# Confirms if the user is still an Elytras of Fire admin.

#region
    # Relaunch Admin Settings page
execute if entity @s[tag=eoflib.admin, scores={eof.settings=2}] run trigger eof.settings set 2

    # Relaunch Uninstall Settings page
execute if entity @s[tag=eoflib.admin, scores={eof.settings=3}] run trigger eof.settings set 3

    # Do not change if not an EoF admin
execute if entity @s[tag=!eoflib.admin] run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "You do not have permission to edit the admin settings for Elytras of Fire. Contact an admin if this is incorrect.", "color": "red"}]

#endregion
