#> eoflib:load/tribe/icewings/give_ability/frost_breath
#
# Provide IceWings with Frost Breath.

#region
    # Set Frost Breath to be dropped
data modify block ~ ~ ~ Items[0].id set value "minecraft:knowledge_book"
data modify block ~ ~ ~ Items[0].tag set from storage eoflib:config eof.abilities[].IceWings[].primary[0].mc_data
data modify block ~ ~ ~ Items[0].tag merge from storage eoflib:config eof.abilities[].IceWings[].primary[0].eof_data

    # Give ability to the player
loot replace entity @s hotbar.6 mine ~ ~ ~ air{items:1b}

#endregion
