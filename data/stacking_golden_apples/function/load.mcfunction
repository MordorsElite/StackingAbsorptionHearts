# This function is run when the datapack is first loaded by the server

# Removing any remains from the datapack being loaded before
scoreboard objectives remove datapack_stacking_absorption
scoreboard objectives remove datapack_stacking_absorption_duration
scoreboard objectives remove datapack_stacking_absorption_variables
schedule clear stacking_golden_apples:decrease_duration_loop

# Initialize scoreboard to track absorption stack
scoreboard objectives add datapack_stacking_absorption dummy "Stacking Absorption"
execute as @a run scoreboard players set @s datapack_stacking_absorption -1

# Initialize scoreboard to track remaining absorption duration
scoreboard objectives add datapack_stacking_absorption_duration dummy "Absorption Duration"
execute as @a run scoreboard players set @s datapack_stacking_absorption_duration -1

# Initialize scoreboard containing constant values used in the functions
scoreboard objectives add datapack_stacking_absorption_variables dummy "Absorption Constants"
scoreboard players set NoneActive datapack_stacking_absorption_variables 1

# THE MAXIMUM STACK VALUE CAN BE CHANGED AT THE END OF THE FILE "apply_stacked_effect.mcfunction"