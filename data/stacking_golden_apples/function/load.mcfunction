# This function is run when the datapack is first loaded by the server

# Initialize scoreboard to track absorption stack
scoreboard objectives remove datapack_stacking_absorption
scoreboard objectives add datapack_stacking_absorption dummy "Stacking Absorption"
execute as @a run scoreboard players set @s datapack_stacking_absorption -1

# Initialize scoreboard to track remaining absorption duration
scoreboard objectives remove datapack_stacking_absorption_duration
scoreboard objectives add datapack_stacking_absorption_duration dummy "Absorption Duration"
execute as @a run scoreboard players set @s datapack_stacking_absorption_duration -1

# Initialize scoreboard containing constant values used in the functions
scoreboard objectives remove datapack_stacking_absorption_constants
scoreboard objectives add datapack_stacking_absorption_constants dummy "Absorption Constants"
scoreboard players set ScoreZero datapack_stacking_absorption_constants 0
scoreboard players set ScoreMinusOne datapack_stacking_absorption_constants -1
scoreboard players set MinLevel datapack_stacking_absorption_constants 0
scoreboard players set NoneActive datapack_stacking_absorption_constants 1

# \/ \/ \/ \/ \/ \/ \/
# THIS VALUE DETERMINES THE MAXIMUM LEVEL FOR THE STACK
scoreboard players set MaxLevel datapack_stacking_absorption_constants 99
# /\ /\ /\ /\ /\ /\ /\

# Additional info for Max Level:

# Level "0" is two hearts, "1" is 4 hearts and every addtional level adds another 2 hearts
# So the default value of 99 grants a maximum of 200 absorption hearts

# If you want to set a max level beyond 99, you'll need to add addtional lines
# for those levels in the file apply_stacked_effect.mcfunction