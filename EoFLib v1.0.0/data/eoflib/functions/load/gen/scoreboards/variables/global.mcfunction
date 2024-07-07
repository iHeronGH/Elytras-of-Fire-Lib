#> eoflib:load/gen/scoreboards/variables/global
#
# Initialises global variables.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:variables/global.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/load/gen/scoreboards/variables/global.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:variables/global.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/load/gen/scoreboards/variables/global.mcfunction", "color": "aqua"}}}]

    # Global
#define score_holder #eoflib.available_dlcs The number of active DLCs currently on the world/server.
scoreboard players set #eoflib.available_dlcs eoflib.dlcs 0

#define score_holder #eoflib.dlc.eoflib The load status of this datapack.
scoreboard players set #eoflib.dlc.eoflib eoflib.dlcs 1

#define score_holder #eoflib.new_id The next available ID to give a player.
execute unless score #eoflib.new_id eoflib.id = #eoflib.new_id eoflib.id run scoreboard players set #eoflib.new_id eoflib.id 0

#endregion
