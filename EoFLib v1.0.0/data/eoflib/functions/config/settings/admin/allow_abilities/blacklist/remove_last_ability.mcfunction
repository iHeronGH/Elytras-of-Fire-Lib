#> eoflib:config/settings/admin/allow_abilities/blacklist/remove_last_ability
#
# Remove registered ability from the blacklist.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/remove_last_ability.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/config/settings/admin/allow_abilities/blacklist/remove_last_ability.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/remove_last_ability.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/config/settings/admin/allow_abilities/blacklist/remove_last_ability.mcfunction", "color": "aqua"}}}]

    # Remove ability from blacklist
data remove storage eoflib:config eoflib.admin_settings.blacklist[-1]

    # Announce feedback
tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Latest ability added has successfully removed from the ability blacklist.", "color": "gray"}]

    # Display blacklist
function eoflib:config/settings/admin/allow_abilities/blacklist/prepare_remove

#endregion
