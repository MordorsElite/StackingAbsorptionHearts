# Triggered once duration is up. Decreases level by one, then resets the duration score counter to 120 seconds
execute as @a if score @s datapack_stacking_absorption_duration = ScoreZero datapack_stacking_absorption_constants if score @s datapack_stacking_absorption > MinLevel datapack_stacking_absorption_constants run scoreboard players set @s datapack_stacking_absorption_duration 2400
execute as @a if score @s datapack_stacking_absorption_duration = ScoreZero datapack_stacking_absorption_constants if score @s datapack_stacking_absorption > MinLevel datapack_stacking_absorption_constants run scoreboard players remove @s datapack_stacking_absorption 1
execute as @a if score @s datapack_stacking_absorption_duration = ScoreZero datapack_stacking_absorption_constants if score @s datapack_stacking_absorption > MinLevel datapack_stacking_absorption_constants run execute as @s run function stacking_golden_apples:apply_stacked_effect

# Full reset of the effect after the duration of the lowest level is up
execute as @a if score @s datapack_stacking_absorption_duration = ScoreZero datapack_stacking_absorption_constants if score @s datapack_stacking_absorption <= MinLevel datapack_stacking_absorption_constants run scoreboard players set @s datapack_stacking_absorption_duration -1
execute as @a if score @s datapack_stacking_absorption_duration = ScoreZero datapack_stacking_absorption_constants if score @s datapack_stacking_absorption <= MinLevel datapack_stacking_absorption_constants run scoreboard players set @s datapack_stacking_absorption -1 

# Decrease duration score by one tick if the duration is above -1
execute as @a if score @s datapack_stacking_absorption_duration >= ScoreMinusOne datapack_stacking_absorption_constants run scoreboard players remove @s datapack_stacking_absorption_duration 1

# Continue loop as long as any player has an active absorption affect that is being tracked
scoreboard players set NoneActive datapack_stacking_absorption_duration 1
execute as @a if score @s datapack_stacking_absorption_duration > ScoreMinusOne datapack_stacking_absorption_constants run scoreboard players set NoneActive datapack_stacking_absorption_duration 0
execute if score NoneActive datapack_stacking_absorption_duration matches 1 run schedule clear stacking_golden_apples:decrease_duration_loop
execute if score NoneActive datapack_stacking_absorption_duration matches 1 run schedule function stacking_golden_apples:decrease_duration_loop 1 replace