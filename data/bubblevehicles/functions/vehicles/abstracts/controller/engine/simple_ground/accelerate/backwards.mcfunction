execute unless score @s bvehicle.brake matches 1 run scoreboard players operation @s[scores={bvehicle.gear=..0}] bvehicle.speed -= @e[type=marker, tag=btemp.origin, limit=1] buvs.accelerate1