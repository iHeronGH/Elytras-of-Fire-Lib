#> eoflib:advancement/new_id
#
# Gives every user a unique ID for Elytras of Fire.

#region
    # Generate ID
scoreboard players operation @s eoflib.id = #eoflib.new_id eoflib.id
scoreboard players operation #eoflib.new_id eoflib.id += #eoflib.1 eoflib.numbers

    # New ID commands
function #eoflib:advancement/new_id

#endregion
