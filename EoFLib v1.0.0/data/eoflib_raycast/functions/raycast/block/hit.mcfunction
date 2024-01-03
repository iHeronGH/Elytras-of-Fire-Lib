#> eoflib_raycast:raycast/block/hit
#
# Handles valid block raycast hit events.

#region
    # Block successfully hit
scoreboard players set #eoflib.raycast.hit eoflib.raycast 1
function #eoflib:abilities/effects/main
tellraw @p[tag=eoflib.ray_active] [{"text": "eoflib_raycast:raycast/hit_block.mcf"}, " [", {"score": {"name": "#eoflib.raycast.distance", "objective": "eoflib.raycast"}}, "]"]

#endregion
