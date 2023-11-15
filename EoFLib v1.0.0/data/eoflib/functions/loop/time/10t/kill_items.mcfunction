#> eoflib:loop/time/10t/kill_items
#
# Kills all EOF item entities.

#region
    # Kill Ability Items
execute at @a if entity @e[type=item, nbt={Item: {tag: {eoflib: {}}}}, distance=..100] run kill @e[type=item, nbt={Item: {tag: {eoflib: {}}}}]

#endregion
