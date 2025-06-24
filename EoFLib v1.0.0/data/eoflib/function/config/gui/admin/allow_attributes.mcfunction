#> eoflib:config/gui/admin/allow_attributes
#
# Display Admin Settings line for toggling attribute toggling.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/allow_attributes.mcf", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/admin/allow_attributes.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/allow_attributes.mcf", "color": "#967228", "hover_event": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/admin/allow_attributes.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/allow_attributes.mcf", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/admin/allow_attributes.mcfunction", "color": "aqua"}}}]


    # Disable
execute if predicate eoflib:settings/admin/allow_attributes run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "Warning: This will prevent all non-admin\nplayers from being able to enable their\nattributes and will disable attributes for\nthose currently logged on your world.\n\nProceed with caution!", "color": "red"}}, "click_event": {"action": "run_command", "command": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 47"}}, {"text": "] ", "color": "gray"}, {"text": "Allow Attributes", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "Toggle the ability for non-admin players to\ntoggle their tribe attributes.", "color": "gray"}}}]

    # Enable
execute unless predicate eoflib:settings/admin/allow_attributes run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hover_event": {"action": "show_text", "value": {"text": "Allow enabling of attributes for all players.", "color": "green"}}, "click_event": {"action": "run_command", "command": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 47"}}, {"text": "] ", "color": "gray"}, {"text": "Allow Attributes", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "Toggle the ability for non-admin players to\ntoggle their tribe attributes.", "color": "gray"}}}]

#endregion
