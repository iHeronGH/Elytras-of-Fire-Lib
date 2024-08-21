#> eoflib:config/settings/player/abilities/checks/occupied_slots
#
# Prevent ability enabling due to @s having occupied ability slots.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:fail/occupied_slots.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/settings/player/abilities/fail/occupied_slots.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:fail/occupied_slots.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/settings/player/abilities/fail/occupied_slots.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:fail/occupied_slots.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/settings/player/abilities/fail/occupied_slots.mcfunction", "color": "aqua"}}}]

    # Fail check
execute unless entity @s[predicate=eoflib:inventory/ability/primary_empty] run scoreboard players set @s eoflib.check -3
execute unless entity @s[predicate=eoflib:inventory/ability/secondary_empty] run scoreboard players set @s eoflib.check -3
execute unless entity @s[predicate=eoflib:inventory/ability/tertiary_empty] run scoreboard players set @s eoflib.check -3

    # Announce fail
execute if score @s eoflib.check matches -3 run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "]", "color": "gray"}, {"text": " Your abilities cannot be enabled as there is an item(s) occupying the ability slots.", "color": "red"}]

#endregion
