#> eoflib:load/gen/scoreboards/objectives/trigger
#
# Initialise trigger objectives.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:objectives/trigger.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:load/gen/scoreboards/objectives/trigger.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:objectives/trigger.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:load/gen/scoreboards/objectives/trigger.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:objectives/trigger.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:load/gen/scoreboards/objectives/trigger.mcfunction", "color": "aqua"}}}]

    # Trigger
#define objective eof.abilities Toggles hotbar abilities.
scoreboard objectives add eof.abilities trigger
scoreboard players enable @a eof.abilities
scoreboard players set @a eof.abilities 0

#define objective eof.attributes Toggles tribe attributes.
scoreboard objectives add eof.attributes trigger
scoreboard players enable @a eof.attributes
scoreboard players set @a eof.attributes 0

#define objective eof.settings Activates settings.
scoreboard objectives add eof.settings trigger
scoreboard players enable @a eof.settings
scoreboard players set @a eof.settings 0

#define objective eoflib.trigger Simulates function access for non-operator players.
scoreboard objectives add eoflib.trigger trigger
scoreboard players enable @a eoflib.trigger
scoreboard players set @a eoflib.trigger 0

#endregion
