#> eoflib:config/settings/player/abilities/checks
#
# Check if the player is capable of enabling their hotbar abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/checks.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- data/eoflib/functions/config/settings/player/abilities/checks.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/checks.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- data/eoflib/functions/config/settings/player/abilities/checks.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/checks.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- data/eoflib/functions/config/settings/player/abilities/checks.mcfunction", "color": "aqua"}}}]

    # Fail
        ## Not a Dragon
execute if entity @s[predicate=!eoflib:tribes/dragon] run function eoflib:config/settings/player/abilities/fail/not_a_dragon

        ## Globally disabled
execute unless predicate eoflib:settings/admin/allow_abilities if entity @s[tag=!eoflib.admin] run function eoflib:config/settings/player/abilities/fail/admin_disabled

        ## Slots occupied
execute if entity @s[predicate=eoflib:tribes/dragon] unless entity @s[predicate=eoflib:inventory/ability/primary_empty, predicate=eoflib:inventory/ability/secondary_empty, predicate=eoflib:inventory/ability/tertiary_empty] run function eoflib:config/settings/player/abilities/fail/occupied_slots

    # Succeed
        ## Enable abilities
execute if entity @s[predicate=eoflib:tribes/dragon] if entity @s[predicate=eoflib:inventory/ability/primary_empty, predicate=eoflib:inventory/ability/secondary_empty, predicate=eoflib:inventory/ability/tertiary_empty] run function eoflib:config/settings/player/abilities/enable

#endregion
