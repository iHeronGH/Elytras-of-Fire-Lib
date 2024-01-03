#> eoflib:loop/time/5t/disable_attributes
#
# Disables attributes and enabling of attributes for non-operator abilities.

#region
    # Disable Attributes
execute unless predicate eoflib:settings/admin/allow_attributes if entity @a[tag=eoflib.atts, tag=!eoflib.admin] run tag @a[tag=eoflib.atts, tag=!eoflib.admin] remove eoflib.atts

#endregion
