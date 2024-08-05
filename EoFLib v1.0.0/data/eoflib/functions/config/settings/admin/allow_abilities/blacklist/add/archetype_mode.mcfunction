#> eoflib:config/settings/admin/allow_abilities/blacklist/add/archetype_mode
#
# Set blacklist mode to ability archetype.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:add/archetype_mode.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/settings/admin/allow_abilities/blacklist/add/archetype_mode.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:add/archetype_mode.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/settings/admin/allow_abilities/blacklist/add/archetype_mode.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:add/archetype_mode.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/settings/admin/allow_abilities/blacklist/add/archetype_mode.mcfunction", "color": "aqua"}}}]

    # Prepare to add tribe
tag @s remove eoflib.abilities.blacklist.ability
tag @s remove eoflib.abilities.blacklist.tribe
tag @s add eoflib.abilities.blacklist.archetype

    # Relaunch ability adding function
function eoflib:config/settings/admin/allow_abilities/blacklist/prepare_add

#endregion
