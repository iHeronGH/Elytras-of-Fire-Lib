#> eoflib:load/tribe/skywings/give_ability/spark_punch
#
# Provide SkyWings with Spark Punch.

#region
    # Set Spark Punch to be dropped
data modify block ~ ~ ~ Items[0].id set value "minecraft:knowledge_book"
execute unless entity @s[tag=!eoflib.ability_mode.spark, tag=!eoflib.ability_mode.smite] run data modify block ~ ~ ~ Items[0].tag set from storage eoflib:config eof.abilities[].SkyWings[].tertiary[0].mc_data
execute unless entity @s[tag=!eoflib.ability_mode.spark, tag=!eoflib.ability_mode.smite] run data modify block ~ ~ ~ Items[0].tag merge from storage eoflib:config eof.abilities[].SkyWings[].tertiary[0].eof_data
execute if entity @s[tag=eoflib.ability_mode.smite] run data modify block ~ ~ ~ Items[0].tag set from storage eoflib:config eof.abilities[].SkyWings[].tertiary[1].mc_data
execute if entity @s[tag=eoflib.ability_mode.smite] run data modify block ~ ~ ~ Items[0].tag merge from storage eoflib:config eof.abilities[].SkyWings[].tertiary[1].eof_data

    # Give ability to the player
loot replace entity @s hotbar.8 mine ~ ~ ~ air{items: 1b}

#endregion
