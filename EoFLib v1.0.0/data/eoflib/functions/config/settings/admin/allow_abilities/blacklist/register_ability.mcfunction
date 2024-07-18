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

    # Add ability to blacklist
function eoflib:config/settings/admin/allow_abilities/blacklist/add_ability with storage eoflib:config eoflib.admin_settings.blacklist_register.eof_data.ability_data

    # Reset scores
scoreboard players reset eoflib.success eoflib.admin_settings

    # Reset storage
data remove storage eoflib:config eoflib.admin_settings.blacklist_register

    # Remove advancement
advancement revoke @s only eoflib:blacklist/register_ability

#endregion
