# Stacking Absorption Hearts

A Minecraft 1.21 datapack that allows the yellow hearts to stack when eating multiple (Enchanted) Golden Apples, instead of merely resetting their effect duration.

This repository has two branches:

- `master`: Hearts stack, but the entire stack gets removed once the 120 second effect duration is up
- `gradual-decrease`: Hearts stack and the stack gets decreased 2 hearts at a time every 120 seconds. Personally I would recommend using this version for survival

Both versions allow you to change the maximum number of hearts you can reach. By default I have set this value to `99`. This can be changed for the instant-decay version in the file `data/stacking_golden_apples/function/load.mcfunction` and for the gradual-decrease version in the file `data/stacking_golden_apples/function/apply_stacked_effect.mcfunction`.

The gradual-decrease version also allows you to "over-charge" the hearts, meaning by eating more apples when already on the max level, you can add additional invisible stacks that need to decay first, before the actual hearts will decrease. This can also be set in the file `data/stacking_golden_apples/function/apply_stacked_effect.mcfunction`

The pack was tested in 1.21.1, but should also work on any other 1.21 version. The datapack is not compatable with versions before 1.21.