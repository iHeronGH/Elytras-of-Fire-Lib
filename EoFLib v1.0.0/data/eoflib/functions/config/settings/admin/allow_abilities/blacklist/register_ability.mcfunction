#> eoflib:config/settings/admin/allow_abilities/blacklist/register_ability
#
# Register an ability for blacklist operations.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/register_ability.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eoflib/functions/config/settings/admin/allow_abilities/blacklist/register_ability.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/register_ability.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eoflib/functions/config/settings/admin/allow_abilities/blacklist/register_ability.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/register_ability.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eoflib/functions/config/settings/admin/allow_abilities/blacklist/register_ability.mcfunction", "color": "aqua"}}}]

    # Register ability for operation
execute anchored eyes positioned ^ ^ ^ run data modify storage eoflib:config eoflib.admin_settings.blacklist_register merge from entity @e[sort=nearest, limit=1, type=item, nbt={Item: {tag: {eof_data: {}}}}, distance=..0.4] Item.tag

    # Add option to blacklist
execute if entity @s[tag=eoflib.admin, tag=!eoflib.abilities.blacklist.tribe, tag=!eoflib.abilities.blacklist.archetype] run function eoflib:config/settings/admin/allow_abilities/blacklist/add_ability with storage eoflib:config eoflib.admin_settings.blacklist_register.eof_data.ability_data
execute if entity @s[tag=eoflib.admin, tag=eoflib.abilities.blacklist.tribe] run function eoflib:config/settings/admin/allow_abilities/blacklist/add_tribe with storage eoflib:config eoflib.admin_settings.blacklist_register.eof_data.ability_data
execute if entity @s[tag=eoflib.admin, tag=eoflib.abilities.blacklist.archetype] run function eoflib:config/settings/admin/allow_abilities/blacklist/add_archetype with storage eoflib:config eoflib.admin_settings.blacklist_register.eof_data.ability_data
# tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Select a blacklist mode:", "color": "gray"}, {"text": "\n\n- [", "color": "gray"}, {"text": "Add Ability to Blacklist", "color": "green", "hoverEvent": {"action": "show_text", "contents": [{"text": "Add a single ability to the blacklist.", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run function eoflib:config/settings/admin/allow_abilities/blacklist/add_ability with storage eoflib:config eoflib.admin_settings.blacklist_register.eof_data.ability_data"}}, {"text": "]\n- [", "color": "gray"}, {"text": "Add Tribe to Blacklist", "color": "gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "Add an entire tribe's ability set to the blacklist.", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run function eoflib:config/settings/admin/allow_abilities/blacklist/add_tribe with storage eoflib:config eoflib.admin_settings.blacklist_register.eof_data.ability_data"}}, {"text": "]\n- [", "color": "gray"}, {"text": "Add Archetype to Blacklist", "color": "gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "Add all abilities of a specific archetype to the blacklist.", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run function eoflib:config/settings/admin/allow_abilities/blacklist/add_archetype with storage eoflib:config eoflib.admin_settings.blacklist_register.eof_data.ability_data"}}, {"text": "]\n\n", "color": "gray"}]

    # Reset scores
scoreboard players reset eoflib.success eoflib.admin_settings

    # Reset storage
data modify storage eoflib:config eoflib.admin_settings.blacklist_register set value {}

    # Remove advancement
advancement revoke @s only eoflib:blacklist/register_ability

#endregion
