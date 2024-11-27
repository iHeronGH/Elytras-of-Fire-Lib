#> eoflib:config/settings/player/attributes/checks
#
# Check if the player is capable of enabling their tribe attributes.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:attributes/checks.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/settings/player/attributes/checks.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:attributes/checks.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/settings/player/attributes/checks.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:attributes/checks.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/settings/player/attributes/checks.mcfunction", "color": "aqua"}}}]

    # Fail
        ## Not a Dragon
execute unless predicate eoflib:tribes/dragon run function eoflib:config/settings/player/attributes/fail/not_a_dragon

        ## Globally disabled
execute unless predicate eoflib:settings/admin/allow_attributes if entity @s[tag=!eoflib.admin] run function eoflib:config/settings/player/attributes/fail/admin_disabled

    # Succeed
        ## Enable attributes
execute if predicate eoflib:settings/admin/allow_attributes if predicate eoflib:tribes/dragon run function eoflib:config/settings/player/attributes/enable
execute unless predicate eoflib:settings/admin/allow_attributes if entity @s[tag=eoflib.admin, predicate=eoflib:tribes/dragon] run function eoflib:config/settings/player/attributes/enable

#endregion
