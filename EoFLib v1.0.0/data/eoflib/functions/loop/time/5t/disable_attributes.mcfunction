#> eoflib:loop/time/5t/disable_attributes
#
# Disables attributes and enabling of attributes for non-operator abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug=3..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:5t/disable_attributes.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/loop/time/5t/disable_attributes.mcfunction", "color": "aqua"}}}]
execute if entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:5t/disable_attributes.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n\ndata/eoflib/functions/loop/time/5t/disable_attributes.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug=3..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:5t/disable_attributes.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/loop/time/5t/disable_attributes.mcfunction", "color": "aqua"}}}]

    # Disable attributes
execute unless predicate eoflib:settings/admin/allow_attributes if entity @a[tag=eoflib.atts, tag=!eoflib.admin] run tag @a[tag=eoflib.atts, tag=!eoflib.admin] remove eoflib.atts

#endregion
