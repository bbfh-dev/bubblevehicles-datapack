function bubblevehicles:vehicles/abstracts/origin/unload
particle minecraft:explosion_emitter ~ ~ ~ 0.1 0.1 0.1 0 5
particle minecraft:crit ~ ~ ~ 1 1 1 0.5 50
playsound ui.stonecutter.take_result master @a ~ ~ ~ 1
kill @s