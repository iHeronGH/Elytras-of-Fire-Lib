#> eoflib:config/settings/player/abilities/checks
#
# Check if the player is capable of enabling their hotbar abilities.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/player/abilities/checks.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:checks.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/config/settings/player/abilities/checks.mcfunction", "color": "aqua"}}}]

    # Fail
        ## Not a Dragon
execute if entity @s[predicate=!eoflib:tribes/dragon] run function eoflib:config/settings/player/abilities/fail/not_a_dragon

        ## Globally Disabled
execute unless predicate eoflib:settings/admin/allow_abilities if entity @s[tag=!eoflib.admin] run function eoflib:config/settings/player/abilities/fail/admin_disabled

        ## Slots Occupied
execute if entity @s[predicate=eoflib:tribes/dragon] unless entity @s[predicate=eoflib:inventory/slot_6_empty, predicate=eoflib:inventory/slot_7_empty, predicate=eoflib:inventory/slot_8_empty] run function eoflib:config/settings/player/abilities/fail/occupied_slots

    # Succeed
        ## Enable Abilities
execute if entity @s[predicate=eoflib:tribes/dragon] if entity @s[predicate=eoflib:inventory/slot_6_empty, predicate=eoflib:inventory/slot_7_empty, predicate=eoflib:inventory/slot_8_empty] run function eoflib:config/settings/player/abilities/enable

#endregion
