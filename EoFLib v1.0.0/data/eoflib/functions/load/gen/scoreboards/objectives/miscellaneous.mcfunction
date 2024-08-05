#> eoflib:load/gen/scoreboards/objectives/miscellaneous
#
# Initialise miscellaneous objectives.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:objectives/miscellaneous.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:load/gen/scoreboards/objectives/miscellaneous.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:objectives/miscellaneous.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:load/gen/scoreboards/objectives/miscellaneous.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=1..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:objectives/miscellaneous.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:load/gen/scoreboards/objectives/miscellaneous.mcfunction", "color": "aqua"}}}]

    # Miscellaneous objectives
#define objective eoflib.dropped_ability_item Tracks players who have dropped an Elytras of Fire ability item.
scoreboard objectives add eoflib.dropped_ability_item minecraft.dropped:minecraft.warped_fungus_on_a_stick

#define objective eoflib.dropped_ricardo Tracks players who have dropped Ricardo. What the heck, dude?
scoreboard objectives add eoflib.dropped_ricardo minecraft.dropped:minecraft.poisonous_potato

#define objective eoflib.used.bow Tracks players who have used a bow.
scoreboard objectives add eoflib.used.bow minecraft.used:minecraft.bow

#define objective eoflib.used.crossbow Tracks players who have used a crossbow.
scoreboard objectives add eoflib.used.crossbow minecraft.used:minecraft.crossbow

#define objective eoflib.used.egg Tracks players who have thrown an egg.
scoreboard objectives add eoflib.used.egg minecraft.used:minecraft.egg

#define objective eoflib.used.ender_pearl Tracks players who have thrown an ender pearl.
scoreboard objectives add eoflib.used.ender_pearl minecraft.used:minecraft.ender_pearl

#define objective eoflib.used.ender_eye Tracks players who have thrown an eye of ender.
scoreboard objectives add eoflib.used.ender_eye minecraft.used:minecraft.ender_eye

#define objective eoflib.used.fishing_rod Tracks players who have used a fishing rod.
scoreboard objectives add eoflib.used.fishing_rod minecraft.used:minecraft.fishing_rod

#define objective eoflib.used.snowball Tracks players who have thrown a snowball.
scoreboard objectives add eoflib.used.snowball minecraft.used:minecraft.snowball

#define objective eoflib.used.wfoas Tracks players who have used a warped fungus on a stick.
scoreboard objectives add eoflib.used.wfoas minecraft.used:minecraft.warped_fungus_on_a_stick

#endregion
