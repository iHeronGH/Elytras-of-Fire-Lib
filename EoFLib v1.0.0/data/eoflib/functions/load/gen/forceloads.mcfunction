#> eoflib:load/gen/forceloads
#
# Sets specific regions to be forceloaded.

#region
	# Forceload 1
		## Set Forceload
forceload add 29999983 29999983

		## Prepare Area
execute positioned 29999983 -63 29999983 run fill ~ ~ ~ ~-2 ~-2 ~-2 bedrock
execute positioned 29999982 -62 29999982 run setblock ~ ~ ~ shulker_box
loot replace block 29999982 -62 29999982 container.0 loot eoflib:commands/ricardo

#endregion
