#> eoflib:config/launch_settings
#
# Determine which settings pages to display to the user.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:config/launch_settings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/launch_settings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:config/launch_settings.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/launch_settings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:config/launch_settings.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/launch_settings.mcfunction", "color": "aqua"}}}]

    # Player settings
execute if score @s eof.settings matches 1 run function eoflib:config/gui/player_settings

    # Admin settings
execute if score @s[tag=!eoflib.admin] eof.settings matches 2 run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "You do not have permission to edit the admin settings for Elytras of Fire. Contact an admin if this is incorrect.", "color": "red"}]
execute if score @s[tag=eoflib.admin] eof.settings matches 2 run function eoflib:config/gui/admin_settings

    # Uninstall settings
execute if score @s[tag=!eoflib.admin] eof.settings matches 3 run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "You do not have permission to edit the uninstall settings for Elytras of Fire. Contact an admin if this is incorrect.", "color": "red"}]
execute if score @s[tag=eoflib.admin] eof.settings matches 3 run function eoflib:config/gui/uninstall_settings

    # Remove residue active uninstall
execute unless score @s[tag=eoflib.admin] eof.settings matches 3 run tag @s remove eoflib.uninstall.active

    # Reinitialize settings trigger
scoreboard players set @s eof.settings 0
scoreboard players enable @a eof.settings

#endregion
