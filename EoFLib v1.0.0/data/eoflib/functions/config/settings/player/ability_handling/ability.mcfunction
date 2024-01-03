#> eoflib:config/settings/player/ability_handling/ability
#
# Toggle Ability Handling to remove abilities.

#region
    # Resolve tags
tag @s remove eoflib.ah.drop_item
tag @s add eoflib.ah.remove_abilities

    # Launch settings
trigger eof.settings set 1

#endregion
