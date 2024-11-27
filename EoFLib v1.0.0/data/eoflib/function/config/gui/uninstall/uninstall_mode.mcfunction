#> eoflib:config/gui/uninstall/uninstall_mode
#
# Function description

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:uninstall/uninstall_mode.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/uninstall/uninstall_mode.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:uninstall/uninstall_mode.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/uninstall/uninstall_mode.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:uninstall/uninstall_mode.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/uninstall/uninstall_mode.mcfunction", "color": "aqua"}}}]

    # Disable
execute if entity @s[tag=eoflib.uninstall] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable Uninstall Mode for yourself.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.uninstall] run trigger eoflib.trigger set 85"}}, {"text": "] ", "color": "gray"}, {"text": "Enter Uninstall Mode", "color": "red", "hoverEvent": {"action": "show_text", "contents": {"text": "Uninstall Mode streamlines the uninstalling\nprocess to ensure proper and intentional\nuninstall procedures. Highly recommended\nwhen updating.", "color": "gray"}}}]

    # Enable
execute if entity @s[tag=!eoflib.uninstall] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable Uninstall Mode for yourself.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=!eoflib.uninstall] run trigger eoflib.trigger set 86"}}, {"text": "] ", "color": "gray"}, {"text": "Enter Uninstall Mode", "color": "red", "hoverEvent": {"action": "show_text", "contents": {"text": "Uninstall Mode streamlines the uninstalling\nprocess to ensure proper and intentional\nuninstall procedures. Highly recommended\nwhen updating.", "color": "gray"}}}]

    # Prompted from uninstall procedure
execute if entity @s[tag=eoflib.uninstall.active] run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "Uninstall", "color": "dark_red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Uninstall Elytras of Fire.\n\nEnsure that all settings as they appear\nabove are correct before continuing.\nThis is your final confirmation!", "color": "dark_red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 87"}}, {"text": "] [", "color": "gray"}, {"text": "Cancel", "color": "aqua", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Cancel Elytras of Fire uninstallation.", "color": "aqua"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 88"}}, {"text": "]", "color": "gray"}]

#endregion
