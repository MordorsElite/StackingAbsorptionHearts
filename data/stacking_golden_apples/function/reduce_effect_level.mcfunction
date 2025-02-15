say reduce

# Reduce the Absorption effect by 1
scoreboard players remove @s datapack_stacking_absorption 1

# Apply the reduced effect to the player
execute as @s run function stacking_golden_apples:apply_stacked_effect