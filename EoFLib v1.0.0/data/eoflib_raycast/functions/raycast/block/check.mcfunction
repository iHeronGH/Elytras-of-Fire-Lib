#> eoflib_raycast:raycast/block/check
#
# Checks if current location is allowed passthrough by ability.

#region
    # Check location
$execute unless block ~ ~ ~ $(passthrough) run function eoflib_raycast:raycast/block/hit

#endregion
