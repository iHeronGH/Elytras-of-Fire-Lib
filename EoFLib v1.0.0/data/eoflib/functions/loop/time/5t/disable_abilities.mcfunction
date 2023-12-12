#> eoflib:loop/time/5t/disable_abilities
#
# Disables abilities and enabling of abilities for non-operator players.

#region
    # Disable Abilities
execute unless predicate eoflib:settings/admin/allow_abilities if entity @a[tag=eoflib.abils, tag=!eoflib.admin] run tag @a[tag=eoflib.abils, tag=!eoflib.admin] remove eoflib.abils
clear @a[tag=!eoflib.abils] #eoflib:items{eof_data: {}}

#endregion
