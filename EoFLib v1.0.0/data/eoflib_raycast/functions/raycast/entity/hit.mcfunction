#> eoflib_raycast:raycast/entity/hit
#
# Handles valid entity raycast hit events.

#region
    # Entity successfully hit
scoreboard players set #eoflib.raycast.hit eoflib.raycast 1
tellraw @p[tag=eoflib.ray_active] [{"text": "eoflib_raycast:raycast/hit_entity.mcf"}, " [", {"score": {"name": "#eoflib.raycast.distance", "objective": "eoflib.raycast"}}, "]"]
function #eoflib:abilities/effects/main

#endregion
