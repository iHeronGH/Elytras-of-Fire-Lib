#> eoflib:loop/time/20t/kill_items
#
# Kills all EOF item entities.

#region
    # Kill Ability Items
execute at @a if entity @e[type=item, nbt={Item: {tag: {eof_data: {}}}}, distance=..80] run kill @e[type=item, nbt={Item: {tag: {eof_data: {}}}}]

#endregion
