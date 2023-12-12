#> eoflib:config/settings/player/attributes/checks
#
# Check if the player is capable of enabling their tribe attributes.

#region
    # Fail
        ## Not a Dragon
execute if entity @s[predicate=!eoflib:tribes/dragon] run function eoflib:config/settings/player/attributes/fail/not_a_dragon

        ## Globally Disabled
execute unless predicate eoflib:settings/admin/allow_attributes if entity @s[tag=!eoflib.admin] run function eoflib:config/settings/player/attributes/fail/admin_disabled

    # Succeed
        ## Enable Attributes
execute if predicate eoflib:settings/admin/allow_attributes if entity @s[predicate=eoflib:tribes/dragon] run function eoflib:config/settings/player/attributes/enable
execute unless predicate eoflib:settings/admin/allow_attributes if entity @s[tag=eoflib.admin, predicate=eoflib:tribes/dragon] run function eoflib:config/settings/player/attributes/enable

#endregion
