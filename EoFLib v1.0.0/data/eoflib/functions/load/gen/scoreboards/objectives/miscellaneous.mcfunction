#> eoflib:load/gen/scoreboards/objectives/miscellaneous
#
# Initialise miscellaneous objectives.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:objectives/miscellaneous.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/load/gen/scoreboards/objectives/miscellaneous.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:objectives/miscellaneous.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/load/gen/scoreboards/objectives/miscellaneous.mcfunction", "color": "aqua"}}}]

    # Miscellaneous objectives
#define objective eoflib.dropped_ability_item Tracks players who have dropped an Elytras of Fire ability item.
# scoreboard objectives add eoflib.dropped_ability_item minecraft.dropped:minecraft.knowledge_book
scoreboard objectives add eoflib.dropped_ability_item minecraft.dropped:minecraft.ender_eye

#define objective eoflib.dropped_ricardo Tracks players who have dropped Ricardo. What the heck, dude?
scoreboard objectives add eoflib.dropped_ricardo minecraft.dropped:minecraft.poisonous_potato

#define objective eoflib.projectile.egg Tracks players who have thrown an egg.
scoreboard objectives add eoflib.projectile.egg minecraft.used:minecraft.egg

#define objective eoflib.projectile.ender_pearl Tracks players who have thrown an ender pearl.
scoreboard objectives add eoflib.projectile.ender_pearl minecraft.used:minecraft.ender_pearl

#define objective eoflib.projectile.eye_of_ender Tracks players who have thrown an eye of ender.
scoreboard objectives add eoflib.projectile.ender_pearl minecraft.used:minecraft.ender_eye

#define objective eoflib.projectile.snowball Tracks players who have thrown a snowball.
scoreboard objectives add eoflib.projectile.snowball minecraft.used:minecraft.snowball

#define objective eoflib.projectile.bow Tracks players who have used a bow.
scoreboard objectives add eoflib.projectile.bow minecraft.used:minecraft.bow

#define objective eoflib.projectile.crossbow Tracks players who have used a crossbow.
scoreboard objectives add eoflib.projectile.crossbow minecraft.used:minecraft.crossbow

#endregion
