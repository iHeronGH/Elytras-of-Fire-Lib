#> eoflib:advancement/initialise
#
# Initialise players on datapack load.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eoflib:advancement/initialise.mcf", "color": "gold"}]

    # Initialise scoreboards
scoreboard players set @s eof.trigger 0
scoreboard players set @s eof.settings 0
scoreboard players set @s eof.abilities 0
scoreboard players set @s eof.attributes 0

    # Initialise tags
tag @s[tag=!eoflib.ah.remove_abilities, tag=!eoflib.ah.drop_item] add eoflib.ah.remove_abilities

    # Run other initialise functions
function #eoflib:advancement/initialise

#endregion
