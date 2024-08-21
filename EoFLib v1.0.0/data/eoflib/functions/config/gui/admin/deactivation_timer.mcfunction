#> eoflib:config/gui/admin/deactivation_timer
#
# Display Admin Settings line for toggling Deactivation Timer.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/deactivation_timer.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/gui/admin/deactivation_timer.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/deactivation_timer.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/gui/admin/deactivation_timer.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:admin/deactivation_timer.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/gui/admin/deactivation_timer.mcfunction", "color": "aqua"}}}]

    # Disable
execute if predicate eoflib:settings/admin/ability_timer run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Warning: This will prevent abilities from\nbeing automatically disabled for inactive\nplayers, which can create unnecessary\n(albeit minor) strain on your world.\n\nProceed with caution!", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 42"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Deactivation Timer", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "The Deactivation Timer automatically disables\nabilities for players who are not actively\nusing them. Enable this option to decrease\nperformance impact of Elytras of Fire\nLib and any installed DLCs.", "color": "gray"}}}]

    # Enable
execute unless predicate eoflib:settings/admin/ability_timer run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable deactivation timer for non-admin players.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 42"}}, {"text": "] ", "color": "gray"}, {"text": "Enable Deactivation Timer", "color": "gold", "hoverEvent": {"action": "show_text", "contents": {"text": "The Deactivation Timer automatically disables\nabilities for players who are not actively\nusing them. Enable this option to decrease\nperformance impact of Elytras of Fire\nLib and any installed DLCs.", "color": "gray"}}}]

#endregion
