#> eoflib:load/gen/forceloads
#
# Sets specific regions to be forceloaded.

#region
    # Debug
execute if entity @s run tellraw @s[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:forceloads.mcf", "color": "gold", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/load/gen/forceloads.mcfunction", "color": "aqua"}}}]
execute unless entity @s run tellraw @a[tag=eoflib.debug] [{"text": "[", "color": "dark_gray"}, {"text": "Debug", "color": "gold"}, {"text": "] - ", "color": "dark_gray"}, {"text": "eoflib:forceloads.mcf", "color": "gray", "hoverEvent": {"action": "show_text", "value": {"text": "data/eoflib/functions/load/gen/forceloads.mcfunction", "color": "aqua"}}}]

    # Forceload 1
        ## Set Forceload
forceload add 29999983 29999983

        ## Prepare Area
execute positioned 29999983 -63 29999983 run fill ~ ~ ~ ~-2 ~-2 ~-2 bedrock
execute positioned 29999982 -62 29999982 run setblock ~ ~ ~ shulker_box
loot replace block 29999982 -62 29999982 container.0 loot eoflib:commands/ricardo

#endregion
