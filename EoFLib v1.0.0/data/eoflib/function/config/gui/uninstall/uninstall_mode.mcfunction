#> eoflib:config/gui/uninstall/uninstall_mode
#
# Function description

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:uninstall/uninstall_mode.mcf", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/uninstall/uninstall_mode.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:uninstall/uninstall_mode.mcf", "color": "#967228", "hover_event": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/uninstall/uninstall_mode.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:uninstall/uninstall_mode.mcf", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/uninstall/uninstall_mode.mcfunction", "color": "aqua"}}}]

    # Disable
execute if entity @s[tag=eoflib.uninstall] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "Disable Uninstall Mode for yourself.", "color": "red"}}, "click_event": {"action": "run_command", "command": "/execute if entity @s[tag=eoflib.uninstall] run trigger eoflib.trigger set 85"}}, {"text": "] ", "color": "gray"}, {"text": "Enter Uninstall Mode", "color": "red", "hover_event": {"action": "show_text", "value": {"text": "Uninstall Mode streamlines the uninstalling\nprocess to ensure proper and intentional\nuninstall procedures. Highly recommended\nwhen updating.", "color": "gray"}}}]

    # Enable
execute if entity @s[tag=!eoflib.uninstall] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "Enable Uninstall Mode for yourself.", "color": "green"}}, "click_event": {"action": "run_command", "command": "/execute if entity @s[tag=!eoflib.uninstall] run trigger eoflib.trigger set 86"}}, {"text": "] ", "color": "gray"}, {"text": "Enter Uninstall Mode", "color": "red", "hover_event": {"action": "show_text", "value": {"text": "Uninstall Mode streamlines the uninstalling\nprocess to ensure proper and intentional\nuninstall procedures. Highly recommended\nwhen updating.", "color": "gray"}}}]

    # Prompted from uninstall procedure
execute if entity @s[tag=eoflib.uninstall.active] run tellraw @s [{"text": "\n[", "color": "gray"}, {"text": "Uninstall", "color": "dark_red", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "Uninstall Elytras of Fire.\n\nEnsure that all settings as they appear\nabove are correct before continuing.\nThis is your final confirmation!", "color": "dark_red"}}, "click_event": {"action": "run_command", "command": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 87"}}, {"text": "] [", "color": "gray"}, {"text": "Cancel", "color": "aqua", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "Cancel Elytras of Fire uninstallation.", "color": "aqua"}}, "click_event": {"action": "run_command", "command": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 88"}}, {"text": "]", "color": "gray"}]

#endregion
