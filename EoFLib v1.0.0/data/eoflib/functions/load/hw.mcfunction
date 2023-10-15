#> eoflib:load/hw
#
# Hello world!

#region
	# Baseline
tellraw @a[tag=!eoflib.debug] [{"text": "\n", "color": "gray"}, {"text": "                 =", "strikethrough": true}, {"text": " [", "color": "gray"}, {"text": "Elytras ", "color": "red"}, {"text": "of ", "color": "gold"}, {"text": "Fire", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "=                 ", "strikethrough": true}, "\n", {"text": "This datapack implements the draconic world of\nWings of Fire into Minecraft!", "color": "gray"}, "\n\n", {"text": "Version: ", "color": "gray"}, {"text": "2.0.0", "color": "aqua"}, "\nContributors: ", {"text": "View Credits", "color": "aqua", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 2"}}]

		## Admin Msg
tellraw @a[tag=!eoflib.debug, tag=eoflib.admin] [{"text": "Settings: ", "color": "gray"}, {"text": "Player", "color": "aqua", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings"}}, " - ", {"text": "Admin", "color": "aqua", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 2"}}]		

		## Non-Admin Msg
tellraw @a[tag=!eoflib.debug, tag=!eoflib.admin] [{"text": "Settings: ", "color": "gray"}, {"text": "Player", "color": "aqua", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings"}}, " - ", {"text": "Admin", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": {"text": "You do not have permission to edit the Admin Settings for Elytras of Fire. Contact an administrator if this is incorrect.", "color": "red"}}}]

	# DLC Messages
function #eoflib:detect_dlcs

#endregion
