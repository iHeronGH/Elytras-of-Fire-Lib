#> eoflib:loop/time/5t/disable_abilities
#
# Disables abilities and enabling of abilities for non-operator players.

#region
	# Disable Abilities
execute if data storage eoflib:config Settings[{allow_abilities: off}] if entity @a[tag=!eoflib.admin, tag=eoflib.abils] run tag @a[tag=!eoflib.admin, tag=eoflib.abils] remove eoflib.abils
clear @a[tag=!eoflib.abils] #eoflib:items{eoflib: {}}

#endregion
