#> eoflib:advancement/new_id
#
# Gives every user a unique ID for Elytras of Fire.

#region
    # Debug
tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "gray"}, {"text": "eoflib:advancement/new_id.mcf", "color": "gold"}]

    # Generate ID
scoreboard players operation @s eoflib.id = #eoflib.new_id eoflib.id
scoreboard players operation #eoflib.new_id eoflib.id += #eoflib.1 eoflib.numbers

    # New ID commands
function #eoflib:advancement/new_id

#endregion
