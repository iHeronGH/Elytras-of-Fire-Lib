#> eoflib:advancement/new_id
#
# Gives every user a unique ID for Elytras of Fire.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/new_id.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/advancement/new_id.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:advancement/new_id.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/advancement/new_id.mcfunction", "color": "aqua"}}}]

    # Generate ID
scoreboard players operation @s eoflib.id = #eoflib.new_id eoflib.id
scoreboard players operation #eoflib.new_id eoflib.id += #eoflib.1 eoflib.numbers

    # New ID commands
function #eoflib:advancement/new_id

#endregion
