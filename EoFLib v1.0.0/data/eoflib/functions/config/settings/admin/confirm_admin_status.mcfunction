#> eoflib:config/settings/admin/confirm_admin_status
#
# Confirms if the user is still an Elytras of Fire admin.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/confirm_admin_status.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eoflib/functions/config/settings/admin/confirm_admin_status.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/confirm_admin_status.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eoflib/functions/config/settings/admin/confirm_admin_status.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/confirm_admin_status.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eoflib/functions/config/settings/admin/confirm_admin_status.mcfunction", "color": "aqua"}}}]

    # Relaunch Admin Settings page
execute if entity @s[tag=eoflib.admin, scores={eof.settings=2}] run trigger eof.settings set 2

    # Relaunch Uninstall Settings page
execute if entity @s[tag=eoflib.admin, scores={eof.settings=3}] run trigger eof.settings set 3

    # Do not change if not an EoF admin
execute if entity @s[tag=!eoflib.admin] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "You do not have permission to edit the admin settings for Elytras of Fire. Contact an admin if this is incorrect.", "color": "red"}]

#endregion
