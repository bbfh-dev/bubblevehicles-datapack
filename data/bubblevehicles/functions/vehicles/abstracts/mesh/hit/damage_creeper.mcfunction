tag @s add btemp.hit
execute if score $VehicleDamaging buvs.settings matches 1 run scoreboard players remove @e[type=marker, tag=buvs.origin, distance=..6] bvehicle.health 42
execute if score $VehicleDamaging buvs.settings matches 1 run playsound minecraft:block.copper.break master @a ~ ~ ~ 1
execute if score $VehicleDamaging buvs.settings matches 1 run execute at @e[type=marker, tag=buvs.origin, distance=..6] run particle lava ~ ~ ~ 0.5 0.5 0.5 1 10