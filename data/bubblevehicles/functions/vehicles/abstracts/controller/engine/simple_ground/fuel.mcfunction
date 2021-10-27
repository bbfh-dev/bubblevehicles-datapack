execute if score @s bvehicle.gear matches -1 run scoreboard players remove @e[type=marker, tag=btemp.origin, limit=1] bvehicle.fuel 10
execute if score @s bvehicle.gear matches 1 run scoreboard players remove @e[type=marker, tag=btemp.origin, limit=1] bvehicle.fuel 12
execute if score @s bvehicle.gear matches 2.. run scoreboard players remove @e[type=marker, tag=btemp.origin, limit=1] bvehicle.fuel 8
execute if score @s bvehicle.speed = @e[type=marker, tag=btemp.origin, limit=1] buvs.MaxSpeed run scoreboard players add @e[type=marker, tag=btemp.origin, limit=1] bvehicle.fuel 4