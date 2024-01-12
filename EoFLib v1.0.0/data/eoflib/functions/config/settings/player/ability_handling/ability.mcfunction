#> eoflib:config/settings/player/ability_handling/ability
#
# Toggle Ability Handling to remove abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_handling/ability.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/player/ability_handling/ability.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:ability_handling/ability.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/player/ability_handling/ability.mcfunction", "color": "aqua"}}}]

    # Resolve tags
tag @s remove eoflib.ah.drop_item
tag @s add eoflib.ah.remove_abilities

    # Launch settings
trigger eof.settings set 1

#endregion
