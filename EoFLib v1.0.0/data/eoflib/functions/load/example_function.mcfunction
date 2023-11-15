#> namespace:function/path/here
#
# Describe the purpose of this function here. Be sure to include annotations as necessary:
#
#     Intended to be run from chat by users.
# @user
#
#     Accessible by modules other than the current.
# @public
#
#     Use to abstract core logic and uphold backwards-compatbility.
# @api
#
#     The executor to be expected upon the function's call.
# @context <verbose context|[any|core|root]|>
#
#     Declare this function as a child of another.
# @within
#   namespace:first/parent/function
#   namespace:second/parent/function
#
#     Declare this function as an event handler.
# @handles
#   namespace:first/parent/function
#   namespace:second/parent/function
#
#     Define expected values to be given to or received from the function.
# @input
#   score <score_holder> <objective>
#     Description of the input.
# @output
#   score <score_holder> <objective>
#     Description of the output.
#
#     Declare values that are accessed or overwritten by this function.
# @reads
#   storage namespace.__output__:exact/function/path
# @writes
#   storage namespace.__input__:exact/function/path

#region
    # Test
execute if entity @s run tellraw @s "Example function."
execute unless entity @s run tellraw @a "Example function."

#endregion
