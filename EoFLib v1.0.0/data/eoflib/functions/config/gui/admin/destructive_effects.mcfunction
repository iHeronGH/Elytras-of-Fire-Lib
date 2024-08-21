#> eoflib:config/gui/admin/destructive_effects
#
# Display Admin Settings line for toggling destructive effects.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/destructive_effects.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/gui/admin/destructive_effects.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/destructive_effects.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/gui/admin/destructive_effects.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/destructive_effects.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/gui/admin/destructive_effects.mcfunction", "color": "aqua"}}}]

    # Disable
execute if predicate eoflib:settings/admin/destructive_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable destructive aspects of abilities.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 43"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Destructive Effects", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Enable the destructive properties that some\nabilities come with.", "color": "gray"}}}]

    # Enable
execute unless predicate eoflib:settings/admin/destructive_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This allows players to destroy\ncertain blocks with their abilities, which\nwill bypass most methods used to protect\nplayer-owned properties and MAY also\nbypass any installed claiming plugins.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 43"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Destructive Effects", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle the destructive properties that some\nabilities come with.", "color": "gray"}}}]

#endregion
