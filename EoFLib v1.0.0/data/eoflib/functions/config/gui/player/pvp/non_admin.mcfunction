#> eoflib:config/gui/player/pvp/non_admin
#
# Display non-admin-targeted messages.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:pvp/non_admin.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/gui/player/pvp/non_admin.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:pvp/non_admin.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/gui/player/pvp/non_admin.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:pvp/non_admin.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/gui/player/pvp/non_admin.mcfunction", "color": "aqua"}}}]

    # Fail
        ## Globally Disabled
execute unless predicate eoflib:settings/admin/allow_pvp run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Enable damage dealing and reception.\n\nThis setting is disabled. Contact an\nadministrator if this is incorrect.", "color": "dark_gray"}}}, {"text": "] ", "color": "gray"}, {"text": "Enable PVP", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off dealing and taking any\ndamage via tribe abilities.", "color": "dark_gray"}}}]

    
        ## No Tribe
execute if predicate eoflib:settings/admin/allow_pvp unless predicate eoflib:tribes/dragon run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "dark_gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Enable damage dealing and reception.\n\nYou are not a member of any tribes.\nContact an administrator if this is\nincorrect.", "color": "dark_gray"}}}, {"text": "] ", "color": "gray"}, {"text": "Enable PVP", "color": "dark_gray", "strikethrough": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off dealing and taking any\ndamage via tribe abilities.", "color": "dark_gray"}}}]

    # Success
        ## Disable
execute if predicate eoflib:settings/admin/allow_pvp if entity @s[tag=!eoflib.pvp_disabled, predicate=eoflib:tribes/dragon] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "✔", "color": "green", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Disable damage dealing and reception\nfor yourself.", "color": "red"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 6"}}, {"text": "] ", "color": "gray"}, {"text": "Enable PVP", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off dealing and taking any\ndamage via tribe abilities.", "color": "gray"}}}]

    
        ## Enable
execute if predicate eoflib:settings/admin/allow_pvp if entity @s[tag=eoflib.pvp_disabled, predicate=eoflib:tribes/dragon] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "❌", "color": "red", "underlined": true, "hoverEvent": {"action": "show_text", "contents": {"text": "Enable damage dealing and reception.", "color": "green"}}, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 7"}}, {"text": "] ", "color": "gray"}, {"text": "Enable PVP", "color": "gray", "hoverEvent": {"action": "show_text", "contents": {"text": "Toggle on or off dealing and taking any\ndamage via tribe abilities.", "color": "gray"}}}]


#endregion
