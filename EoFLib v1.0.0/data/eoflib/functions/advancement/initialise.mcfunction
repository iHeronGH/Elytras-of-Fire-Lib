#> eoflib:advancement/initialise
#
# Initialise players on datapack load.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/initialise.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/advancement/initialise.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/initialise.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/advancement/initialise.mcfunction", "color": "aqua"}}}]

    # Initialise scoreboards
scoreboard players set @s eoflib.trigger 0
scoreboard players set @s eof.settings 0
scoreboard players set @s eof.abilities 0
scoreboard players set @s eof.attributes 0

    # Initialise tags
tag @s[tag=!eoflib.ah.remove_abilities, tag=!eoflib.ah.drop_item] add eoflib.ah.remove_abilities

    # Run other initialise functions
function #eoflib:advancement/initialise

#endregion
