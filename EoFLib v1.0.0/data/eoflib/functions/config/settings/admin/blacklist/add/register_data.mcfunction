#> eoflib:config/settings/admin/blacklist/add/register_data
#
# Register an ability for blacklist operations.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:add/register_data.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/settings/admin/blacklist/add/register_data.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:add/register_data.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/settings/admin/blacklist/add/register_data.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:add/register_data.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/settings/admin/blacklist/add/register_data.mcfunction", "color": "aqua"}}}]

    # Register ability data for operation
execute anchored eyes positioned ^ ^ ^ run data modify storage eoflib:config eoflib.admin_settings.blacklist_register merge from entity @e[sort=nearest, limit=1, type=item, nbt={Item: {tag: {eof_data: {}}}}, distance=..0.4] Item.tag

    # Add option to blacklist
execute if entity @s[tag=eoflib.admin, tag=eoflib.abilities.blacklist.add.ability] run function eoflib:config/settings/admin/blacklist/add/save_ability with storage eoflib:config eoflib.admin_settings.blacklist_register.eof_data.ability_data
execute if entity @s[tag=eoflib.admin, tag=eoflib.abilities.blacklist.add.tribe] run function eoflib:config/settings/admin/blacklist/add/save_tribe with storage eoflib:config eoflib.admin_settings.blacklist_register.eof_data.ability_data
execute if entity @s[tag=eoflib.admin, tag=eoflib.abilities.blacklist.add.archetype] run function eoflib:config/settings/admin/blacklist/add/save_archetype with storage eoflib:config eoflib.admin_settings.blacklist_register.eof_data.ability_data

    # Resolve tags
tag @s remove eoflib.abilities.blacklist.add
tag @s remove eoflib.abilities.blacklist.add.ability
tag @s remove eoflib.abilities.blacklist.add.tribe
tag @s remove eoflib.abilities.blacklist.add.archetype

    # Reset scores
scoreboard players reset eoflib.success eoflib.admin_settings
scoreboard players reset @s eoflib.dropped_ability_item

    # Reset storage
data modify storage eoflib:config eoflib.admin_settings.blacklist_register set value {}

    # Remove advancement
advancement revoke @s only eoflib:blacklist/register_data

#endregion
