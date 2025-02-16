# This function is triggered by the loop in decrease_duration_loop when the duration = 0 
scoreboard players remove @s datapack_stacking_absorption 1
execute as @s if score @s datapack_stacking_absorption matches 0.. run scoreboard players set @s datapack_stacking_absorption_duration 2400
execute as @s run function stacking_golden_apples:apply_stacked_effect