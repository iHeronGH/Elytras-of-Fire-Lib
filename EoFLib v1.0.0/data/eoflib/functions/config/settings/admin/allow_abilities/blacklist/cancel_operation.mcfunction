#> eoflib:config/settings/admin/allow_abilities/blacklist/cancel_operation
#
# Cancel current blacklist operation.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/cancel_operation.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/config/settings/admin/allow_abilities/blacklist/cancel_operation.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/cancel_operation.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/config/settings/admin/allow_abilities/blacklist/cancel_operation.mcfunction", "color": "aqua"}}}]

    # Cancel operation
tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Operation cancelled.", "color": "red"}]

    # Resolve tags
tag @s remove eoflib.abilities.add_to_blacklist
tag @s remove eoflib.abilities.remove_from_blacklist

    # Remove advancement
advancement revoke @s only eoflib:blacklist/cancel_operation

#endregion
