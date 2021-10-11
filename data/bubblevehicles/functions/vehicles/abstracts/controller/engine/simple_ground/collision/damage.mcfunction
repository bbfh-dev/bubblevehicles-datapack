scoreboard players operation @s bvehicle.speed /= $DamageThreshold buvs.const
scoreboard players operation @e[type=marker, tag=btemp.origin, limit=1] bvehicle.health -= @s bvehicle.speed
scoreboard players operation @e[type=marker, tag=btemp.collideTarget, limit=1] bvehicle.health -= @s bvehicle.speed
execute if score @s bvehicle.speed matches 1.. run particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 0.6 0.2 0.6 0.05 15 normal