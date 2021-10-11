tag @s add btemp.hit
scoreboard players remove @e[type=marker, tag=buvs.origin, distance=..6] bvehicle.health 8
playsound minecraft:block.copper.break master @a ~ ~ ~ 1
execute at @e[type=marker, tag=buvs.origin, distance=..6] run particle lava ~ ~ ~ 0.5 0.5 0.5 1 10