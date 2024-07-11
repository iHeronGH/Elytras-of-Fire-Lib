#> eoflib:config/settings/admin/allow_abilities/blacklist/prepare_add
#
# Prepare player to add an ability to the blacklist.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/prepare_add.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n\ndata/eoflib/functions/config/settings/admin/allow_abilities/blacklist/prepare_add.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/prepare_add.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n\ndata/eoflib/functions/config/settings/admin/allow_abilities/blacklist/prepare_add.mcfunction", "color": "aqua"}}}]

    # Resolve tags
tag @s add eoflib.abilities.add_to_blacklist
tag @s remove eoflib.abilities.remove_from_blacklist

    # Announce player is ready to blacklist ability
tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Drop", "color": "gray", "italic": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "Current binding: ", "color": "gray"}, {"keybind": "key.drop", "color": "aqua"}]}}, {"text": " an ability to add it to the blacklist. ", "color": "gray"}, {"text": "Use", "color": "gray", "italic": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "Current binding: ", "color": "gray"}, {"keybind": "key.use", "color": "aqua"}]}}, {"text": " an ability to instead cancel the operation. ", "color": "gray"}, {"text": "[", "color": "gray"}, {"text": "Cancel", "color": "red", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eof.settings set 9"}}, {"text": "]", "color": "gray"}]

#endregion
