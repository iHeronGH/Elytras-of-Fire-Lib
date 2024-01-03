#> eoflib:config/launch_settings
#
# Determine which settings pages to display to the user.

#region
    # Player settings
execute if score @s eof.settings matches 1 run function eoflib:config/gui/player_settings

    # Admin settings
execute if score @s[tag=!eoflib.admin] eof.settings matches 2 run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "You do not have permission to edit the admin settings for Elytras of Fire. Contact an admin if this is incorrect.", "color": "red"}]
execute if score @s[tag=eoflib.admin] eof.settings matches 2 run function eoflib:config/gui/admin_settings

    # Uninstall settings
execute if score @s[tag=!eoflib.admin] eof.settings matches 3 run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "You do not have permission to edit the uninstall settings for Elytras of Fire. Contact an admin if this is incorrect.", "color": "red"}]
execute if score @s[tag=eoflib.admin] eof.settings matches 3 run function eoflib:config/gui/uninstall_settings

    # Reinitialize settings trigger
scoreboard players set @s eof.settings 0
scoreboard players enable @a eof.settings

#endregion
