#> eoflib:config/gui/admin/allow_abilities
#
# Display Admin Settings line for toggling ability toggling.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/allow_abilities.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/admin/allow_abilities.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/allow_abilities.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/admin/allow_abilities.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/allow_abilities.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/admin/allow_abilities.mcfunction", "color": "aqua"}}}]


    # Disable
execute if predicate eoflib:settings/admin/allow_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will prevent all non-admin\nplayers from being able to enable their\nabilities and will disable abilities for\nthose currently logged on your world.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 33"}}, {"text": "] [", "color": "gray"}, {"text": "Add", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Add an ability to the ability blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 34"}}, " ", {"text": "Remove", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Remove an ability from the ability blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 38"}}, {"text": "] ", "color": "gray"}, {"text": "Allow Abilities", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle the ability for non-admin players to\ntoggle their abilities.", "color": "gray"}}}]

    # Enable
execute unless predicate eoflib:settings/admin/allow_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Allow enabling of abilities for all players.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 33"}}, {"text": "] [", "color": "gray"}, {"text": "Add", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Add an ability to the ability blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 34"}}, " ", {"text": "Remove", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Remove an ability from the ability blacklist.", "color": "gray"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 38"}}, {"text": "] ", "color": "gray"}, {"text": "Allow Abilities", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle the ability for non-admin players to\ntoggle their abilities.", "color": "gray"}}}]

#endregion
