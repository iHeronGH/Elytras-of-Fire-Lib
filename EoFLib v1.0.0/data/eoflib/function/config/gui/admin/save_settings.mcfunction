#> eoflib:config/gui/admin/save_settings
#
# Display Admin Settings line for toggling settings saving.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/save_settings.mcf", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/admin/save_settings.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/save_settings.mcf", "color": "#967228", "hover_event": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/admin/save_settings.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/save_settings.mcf", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/admin/save_settings.mcfunction", "color": "aqua"}}}]


    # Disable
execute if predicate eoflib:settings/admin/save_settings run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "Warning: This will prevent all changed\nsettings from persisting if the world\nis reloaded in any way.\n\nProceed with caution!", "color": "red"}}, "click_event": {"action": "run_command", "command": "/trigger eoflib.trigger set 30"}}, {"text": "] [", "color": "gray"}, {"text": "Default", "color": "dark_gray", "hover_event": {"action": "show_text", "value": {"text": "Set all settings to their default state.\n\nRequires \"Persistent Settings\" setting\nto be disabled.", "color": "dark_gray"}}}, {"text": "] ", "color": "gray"}, {"text": "Persistent Settings", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "Keep your settings when the world is\nreloaded in any way.", "color": "gray"}}}]

    # Enable
execute unless predicate eoflib:settings/admin/save_settings run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "Save your settings when the world is\nreloaded by any means.", "color": "green"}}, "click_event": {"action": "run_command", "command": "/trigger eoflib.trigger set 30"}}, {"text": "] [", "color": "gray"}, {"text": "Default", "color": "aqua", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "Set all settings to their default state.", "color": "aqua"}}, "click_event": {"action": "run_command", "command": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 31"}}, {"text": "] ", "color": "gray"}, {"text": "Persistent Settings", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "Keep your settings when the world is\nreloaded in any way.", "color": "gray"}}}]

#endregion
