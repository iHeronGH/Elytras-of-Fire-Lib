#> eoflib:config/gui/player/abilities/non_admin
#
# Display non-admin-targeted messages.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/non_admin.mcf", "color": "gold", "hover_event": {"action": "show_text", "value": {"text": "You ran the following function:\n- eoflib:config/gui/player/abilities/non_admin.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/non_admin.mcf", "color": "#967228", "hover_event": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " ran the following function:\n- eoflib:config/gui/player/abilities/non_admin.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:abilities/non_admin.mcf", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Server ran the following function:\n- eoflib:config/gui/player/abilities/non_admin.mcfunction", "color": "aqua"}}}]

    # Fail
        ## Globally Disabled
execute unless predicate eoflib:settings/admin/allow_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray", "hover_event": {"action": "show_text", "value": {"text": "Enable your tribal abilities.\n\nThis setting is disabled. Contact an\nadministrator if this is incorrect.", "color": "dark_gray"}}}, {"text": "] ", "color": "gray"}, {"text": "Enable Tribe Abilities", "color": "dark_gray", "strikethrough": true, "hover_event": {"action": "show_text", "value": {"text": "Toggle on or off your hotbar abilities.", "color": "dark_gray"}}}]

        ## No Tribe
execute if predicate eoflib:settings/admin/allow_abilities unless predicate eoflib:tribes/dragon run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray", "hover_event": {"action": "show_text", "value": {"text": "Enable your tribal abilities.\n\nYou are not a member of any tribes.\nContact an administrator if this is\nincorrect.", "color": "dark_gray"}}}, {"text": "] ", "color": "gray"}, {"text": "Enable Tribe Abilities", "color": "dark_gray", "strikethrough": true, "hover_event": {"action": "show_text", "value": {"text": "Toggle on or off your hotbar abilities.", "color": "dark_gray"}}}]

    # Success
        ## Disable
execute if entity @s[tag=eoflib.abilities, predicate=eoflib:tribes/dragon] if predicate eoflib:settings/admin/allow_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "click_event": {"action": "run_command", "command": "/trigger eof.abilities set 2"}, "hover_event": {"action": "show_text", "value": {"text": "Disable your tribal abilities.", "color": "red"}}}, {"text": "] ", "color": "gray"}, {"text": "Enable Tribe Abilities", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Toggle on or off your hotbar abilities.", "color": "gray"}}}]

        ## Enable checks
execute if entity @s[tag=!eoflib.abilities, predicate=eoflib:tribes/dragon] if predicate eoflib:settings/admin/allow_abilities run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "click_event": {"action": "run_command", "command": "/trigger eof.abilities set 2"}, "hover_event": {"action": "show_text", "value": {"text": "Enable your tribal abilities.", "color": "green"}}}, {"text": "] ", "color": "gray"}, {"text": "Enable Tribe Abilities", "color": "gray", "hover_event": {"action": "show_text", "value": {"text": "Toggle on or off your hotbar abilities.", "color": "gray"}}}]

#endregion
