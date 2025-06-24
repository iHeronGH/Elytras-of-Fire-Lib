#> eoflib:config/gui/player/attributes/non_admin
#
# Display non-admin-targeted messages.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:attributes/non_admin.mcf", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/player/attributes/non_admin.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:attributes/non_admin.mcf", "color": "#967228", "hover_event": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/player/attributes/non_admin.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:attributes/non_admin.mcf", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/player/attributes/non_admin.mcfunction", "color": "aqua"}}}]

    # Fail
        ## Globally Disabled
execute unless predicate eoflib:settings/admin/allow_attributes run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray", "hover_event": {"action": "show_text", "value": {"text": "Enable your tribal attributes and passives.\n\nThis setting is disabled. Contact an\nadministrator if this is incorrect.", "color": "dark_gray"}}}, {"text": "] ", "color": "gray"}, {"text": "Enable Tribe Attributes", "color": "dark_gray", "strikethrough": true, "hover_event": {"action": "show_text", "value": {"text": "Toggle on or off your tribe's attributes\nand any passive abilities.", "color": "dark_gray"}}}]

        ## No Tribe
execute if predicate eoflib:settings/admin/allow_attributes unless predicate eoflib:tribes/dragon run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray", "hover_event": {"action": "show_text", "value": {"text": "Enable your tribal attributes and passives.\n\nYou are not a member of any tribes.\nContact an administrator if this is\nincorrect.", "color": "dark_gray"}}}, {"text": "] ", "color": "gray"}, {"text": "Enable Tribe Attributes", "color": "dark_gray", "strikethrough": true, "hover_event": {"action": "show_text", "value": {"text": "Toggle on or off your tribe's attributes\nand any passive abilities.", "color": "dark_gray"}}}]

    # Success
        ## Disable
execute if predicate eoflib:settings/admin/allow_attributes if predicate eoflib:tribes/dragon if entity @s[tag=eoflib.atts] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "click_event": {"action": "run_command", "command": "/trigger eof.attributes set 2"}, "hover_event": {"action": "show_text", "value": {"text": "Disable your tribal attributes and passives.", "color": "red"}}}, {"text": "] ", "color": "gray"}, {"text": "Enable Tribe Attributes", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Toggle on or off your tribe's attributes\nand any passive abilities.", "color": "gray"}}}]

        ## Enable
execute if predicate eoflib:settings/admin/allow_attributes if predicate eoflib:tribes/dragon if entity @s[tag=!eoflib.atts] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "click_event": {"action": "run_command", "command": "/trigger eof.attributes set 2"}, "hover_event": {"action": "show_text", "value": {"text": "Enable your tribal attributes and passives.", "color": "green"}}}, {"text": "] ", "color": "gray"}, {"text": "Enable Tribe Attributes", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Toggle on or off your tribe's attributes\nand any passive abilities.", "color": "gray"}}}]

#endregion
