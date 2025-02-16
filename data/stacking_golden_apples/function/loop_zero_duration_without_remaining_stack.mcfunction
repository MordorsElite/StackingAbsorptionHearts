# This function is triggered by the loop in decrease_duration_loop
# when the duration = 0 and stack level < 0

scoreboard players set @s datapack_stacking_absorption_duration -1
scoreboard players set @s datapack_stacking_absorption -1 