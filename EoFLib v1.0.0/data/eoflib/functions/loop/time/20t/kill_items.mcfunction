#> eoflib:loop/time/20t/kill_items
#
# Kills all EoF item entities.

#region
    # Kill ability items
execute at @a if entity @e[type=item, nbt={Item: {tag: {eof_data: {}}}}, distance=..80] run kill @e[type=item, nbt={Item: {tag: {eof_data: {}}}}]

#endregion
