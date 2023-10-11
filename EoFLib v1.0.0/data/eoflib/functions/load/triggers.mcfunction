#> eoflib:load/triggers
# 
# Execute a variety of functions, simulating /function access for non-operator players.

#region
	# Remove Advancement
advancement revoke @s only eoflib:trigger

	# Other Trigger
		## View Credits
execute if score @s eof.trigger matches 2 run function eoflib:load/credits

		## Range Display
execute if score @s eof.trigger matches 3 run function eoflib:config/settings/player/range_display/disable
execute if score @s eof.trigger matches 4 run function eoflib:config/settings/player/range_display/enable

		## Ability Handling
execute if score @s eof.trigger matches 5 run function eoflib:config/settings/player/ability_handling/ability
execute if score @s eof.trigger matches 6 run function eoflib:config/settings/player/ability_handling/item

		## Form Submissions
execute if score @s eof.trigger matches 7 run function eoflib:load/report/bug
execute if score @s eof.trigger matches 8 run function eoflib:load/report/idea
execute if score @s eof.trigger matches 9 run function eoflib:load/report/feedback
execute if score @s eof.trigger matches 10 run function eoflib:load/report/bye_ricardo

		## Failsafe
execute unless score @s eof.trigger matches 0 unless score @s eof.trigger matches 2..10 run tellraw @s [{"text": "", "color": "red"}, {"text": "\n[", "color": "gray"}, "E", {"text": "o", "color": "gold"}, "F", {"text": "]", "color": "gray"}, " Invalid range for trigger ", {"text": "eof.trigger", "color": "gold"}, "; received value (", {"score":{"name": "@s", "objective": "eof.trigger"}, "color": "gold"}, ") does not match expected value (", {"text": "2-10", "color": "gold"}, ".)"]

	# Abilities Trigger
execute if score @s eof.abilities matches 1..2 run function eoflib:config/settings/player/abilities/toggle

		## Failsafe
execute unless score @s eof.abilities matches 0..2 run tellraw @s [{"text": "", "color": "red"}, {"text": "\n[", "color": "gray"}, "E", {"text": "o", "color": "gold"}, "F", {"text": "]", "color": "gray"}, " Invalid range for trigger ", {"text": "eof.abilities", "color": "gold"}, "; received value (", {"score":{"name": "@s", "objective": "eof.abilities"}, "color": "gold"}, ") does not match expected value (", {"text": "1-2", "color": "gold"}, ".)"]

	# Attributes Trigger
execute if score @s eof.attributes matches 1..2 run function eoflib:config/settings/player/attributes/toggle

		## Failsafe
execute unless score @s eof.attributes matches 0..2 run tellraw @s [{"text": "", "color": "red"}, {"text": "\n[", "color": "gray"}, "E", {"text": "o", "color": "gold"}, "F", {"text": "]", "color": "gray"}, " Invalid range for trigger ", {"text": "eof.attributes", "color": "gold"}, "; received value (", {"score":{"name": "@s", "objective": "eof.attributes"}, "color": "gold"}, ") does not match expected value (", {"text": "1-2", "color": "gold"}, ".)"]

	# Settings Trigger
execute if score @s eof.settings matches 1..2 run function #eoflib:config

		## Failsafe
execute unless score @s eof.settings matches 0..2 run tellraw @s [{"text": "", "color": "red"}, {"text": "\n[", "color": "gray"}, "E", {"text": "o", "color": "gold"}, "F", {"text": "]", "color": "gray"}, " Invalid range for trigger ", {"text": "eof.settings", "color": "gold"}, "; received value (", {"score":{"name": "@s", "objective": "eof.settings"}, "color": "gold"}, ") does not match expected value (", {"text": "1-2", "color": "gold"}, ".)"]

	# Reset Scores
scoreboard players enable @s eof.abilities
scoreboard players enable @s eof.attributes
scoreboard players enable @s eof.settings
scoreboard players enable @s eof.trigger
scoreboard players set @s eof.abilities 0
scoreboard players set @s eof.attributes 0
scoreboard players set @s eof.settings 0
scoreboard players set @s eof.trigger 0

#endregion
