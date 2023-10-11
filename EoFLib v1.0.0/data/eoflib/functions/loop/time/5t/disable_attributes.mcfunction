#> eoflib:loop/time/5t/disable_attributes
#
# Disables attributes and enabling of attributes for non-operator abilities.

#region
	# Disable Attributes
execute if data storage eoflib:config Settings[{allow_attributes: off}] if entity @a[tag=!eoflib.admin, tag=eoflib.atts] run tag @a[tag=!eoflib.admin, tag=eoflib.atts] remove eoflib.atts
# execute if data storage eoflib:config Settings[{allow_attributes: off}] if entity @a[tag=!eoflib.admin, tag=eoflib.atts] run function eoflib:load/global/reset/atts

#endregion
