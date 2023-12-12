#> eoflib:config/settings/player/abilities/checks
#
# Check if the player is capable of enabling their hotbar abilities.

#region
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
