#> eoflib:load/initialise
#
# Initialise players on datapack load.

#region
    # Initialise scoreboards
scoreboard players set @s eof.trigger 0
scoreboard players set @s eof.settings 0
scoreboard players set @s eof.abilities 0
scoreboard players set @s eof.attributes 0

    # Initialise tags
tag @s[tag=!eoflib.ah.remove_abilities, tag=!eoflib.ah.drop_item] add eoflib.ah.remove_abilities

#endregion
