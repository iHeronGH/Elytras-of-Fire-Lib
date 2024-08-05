#> eoflib:config/settings/admin/allow_abilities/blacklist/prepare_add
#
# Prepare player to add an ability to the blacklist.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/prepare_add.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "You executed the following function:\n- eoflib:config/settings/admin/allow_abilities/blacklist/prepare_add.mcfunction", "color": "aqua"}}}]
execute if entity @s at @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=3..}, distance=0.1..] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/prepare_add.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": [{"selector": "@s", "color": "aqua"}, {"text": " executed the following function:\n- eoflib:config/settings/admin/allow_abilities/blacklist/prepare_add.mcfunction", "color": "aqua"}]}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug, scores={eoflib.debug_mode=2..}] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:blacklist/prepare_add.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "Server executed the following function:\n- eoflib:config/settings/admin/allow_abilities/blacklist/prepare_add.mcfunction", "color": "aqua"}}}]

    # Resolve tags
tag @s add eoflib.abilities.blacklist.add
tag @s remove eoflib.abilities.blacklist.remove

    # Announce player is ready to blacklist ability
        ## Blacklist mode header
execute if entity @s[tag=eoflib.admin] run tellraw @s [{"text": "[", "color": "gray"}, {"text": "E", "color": "red"}, {"text": "o", "color": "gold"}, {"text": "F", "color": "red"}, {"text": "] ", "color": "gray"}, {"text": "Select a blacklist mode:\n", "color": "gray"}]

        ## Blacklist by name selected
execute if entity @s[tag=eoflib.admin, tag=!eoflib.abilities.blacklist.tribe, tag=!eoflib.abilities.blacklist.archetype] run tellraw @s [{"text": "- [", "color": "gray"}, {"text": "Add Ability", "color": "green", "hoverEvent": {"action": "show_text", "contents": [{"text": "Add a single ability to the blacklist.", "color": "gray"}]}}, {"text": "]\n- [", "color": "gray"}, {"text": "Add Tribe", "color": "gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "Add an entire tribe's ability set to the blacklist.", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 26"}}, {"text": "]\n- [", "color": "gray"}, {"text": "Add Archetype", "color": "gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "Add all abilities of a specific archetype to the blacklist.", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 27"}}, {"text": "]\n"}]

        ## Blacklist by tribe selected
execute if entity @s[tag=eoflib.admin, tag=eoflib.abilities.blacklist.tribe] run tellraw @s [{"text": "- [", "color": "gray"}, {"text": "Add Ability", "color": "gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "Add a single ability to the blacklist.", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 25"}}, {"text": "]\n- [", "color": "gray"}, {"text": "Add Tribe", "color": "green", "hoverEvent": {"action": "show_text", "contents": [{"text": "Add an entire tribe's ability set to the blacklist.", "color": "gray"}]}}, {"text": "]\n- [", "color": "gray"}, {"text": "Add Archetype", "color": "gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "Add all abilities of a specific archetype to the blacklist.", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 27"}}, {"text": "]\n"}]

        ## Blacklist by archetype selected
execute if entity @s[tag=eoflib.admin, tag=eoflib.abilities.blacklist.archetype] run tellraw @s [{"text": "- [", "color": "gray"}, {"text": "Add Ability", "color": "gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "Add a single ability to the blacklist.", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 25"}}, {"text": "]\n- [", "color": "gray"}, {"text": "Add Tribe", "color": "gray", "underlined": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "Add an entire tribe's ability set to the blacklist.", "color": "gray"}]}, "clickEvent": {"action": "run_command", "value": "/execute if entity @s[tag=eoflib.admin] run trigger eoflib.trigger set 26"}}, {"text": "]\n- [", "color": "gray"}, {"text": "Add Archetype", "color": "green", "hoverEvent": {"action": "show_text", "contents": [{"text": "Add all abilities of a specific archetype to the blacklist.", "color": "gray"}]}}, {"text": "]\n"}]

        ## Blacklist instructions
tellraw @s [{"text": ""}, {"text": "Drop", "color": "gray", "italic": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "Current binding: ", "color": "gray"}, {"keybind": "key.drop", "color": "aqua"}]}}, {"text": " an ability to add its information to the blacklist. ", "color": "gray", "italic": false}, {"text": "Use", "color": "gray", "italic": true, "hoverEvent": {"action": "show_text", "contents": [{"text": "Current binding: ", "color": "gray"}, {"keybind": "key.use", "color": "aqua"}]}}, {"text": " an ability to instead cancel the operation. ", "color": "gray", "italic": false}, {"text": "[", "color": "gray"}, {"text": "Cancel", "color": "red", "underlined": true, "clickEvent": {"action": "run_command", "value": "/trigger eoflib.trigger set 32"}}, {"text": "]", "color": "gray"}]

#endregion
