#> eoflib:load/gen/scoreboards/worldtime
#
# Initialises worldtime constants.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:scoreboards/worldtime.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/load/gen/scoreboards/worldtime.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:scoreboards/worldtime.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/load/gen/scoreboards/worldtime.mcfunction", "color": "aqua"}}}]

    # Worldtime Consts
#define score_holder #eoflib.worldtime.current Tracks the current time on the world.
execute store result score #eoflib.worldtime.current eoflib.worldtime run time query daytime

#define score_holder #eoflib.worldtime.dusk Defines the beginning of dusk.
execute unless score #eoflib.worldtime.dusk eoflib.worldtime = #eoflib.worldtime.dusk eoflib.worldtime run scoreboard players set #eoflib.worldtime.dusk eoflib.worldtime 12000

#define score_holder #eoflib.worldtime.sunset Defines the beginning of sunset.
execute unless score #eoflib.worldtime.sunset eoflib.worldtime = #eoflib.worldtime.sunset eoflib.worldtime run scoreboard players set #eoflib.worldtime.sunset eoflib.worldtime 14400

#define score_holder #eoflib.worldtime.sunrise Defines the beginning of sunrise.
execute unless score #eoflib.worldtime.sunrise eoflib.worldtime = #eoflib.worldtime.sunrise eoflib.worldtime run scoreboard players set #eoflib.worldtime.sunrise eoflib.worldtime 21600

#define score_holder #eoflib.worldtime.dawn Defines the beginning of dawn.
execute unless score #eoflib.worldtime.dawn eoflib.worldtime = #eoflib.worldtime.dawn eoflib.worldtime run scoreboard players set #eoflib.worldtime.dawn eoflib.worldtime 24000

#endregion
