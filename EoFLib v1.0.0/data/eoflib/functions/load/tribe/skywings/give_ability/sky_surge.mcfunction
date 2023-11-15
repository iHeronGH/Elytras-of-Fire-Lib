#> eoflib:load/tribe/skywings/give_ability/sky_surge
#
# Provide SkyWings with Sky Surge.

#region
    # Set Sky Surge to be dropped
data modify block ~ ~ ~ Items[0].id set value "minecraft:knowledge_book"
data modify block ~ ~ ~ Items[0].tag set from storage eoflib:config eof.abilities[].SkyWings[].secondary[0].mc_data
data modify block ~ ~ ~ Items[0].tag merge from storage eoflib:config eof.abilities[].SkyWings[].secondary[0].eof_data

    # Give ability to the player
loot replace entity @s hotbar.7 mine ~ ~ ~ air{items:1b}

#endregion
