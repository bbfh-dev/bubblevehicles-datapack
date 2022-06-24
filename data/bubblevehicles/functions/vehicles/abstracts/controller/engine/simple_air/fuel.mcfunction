execute if score @s bvehicle.gear matches ..-3 run scoreboard players remove @e[type=marker, tag=btemp.origin, limit=1] bvehicle.fuel 5
execute if score @s bvehicle.gear matches ..-1 run scoreboard players remove @e[type=marker, tag=btemp.origin, limit=1] bvehicle.fuel 8
execute if score @s bvehicle.gear matches 0 run scoreboard players remove @e[type=marker, tag=btemp.origin, limit=1] bvehicle.fuel 1
execute if score @s bvehicle.gear matches 1.. run scoreboard players remove @e[type=marker, tag=btemp.origin, limit=1] bvehicle.fuel 8
execute if score @s bvehicle.gear matches 3.. run scoreboard players remove @e[type=marker, tag=btemp.origin, limit=1] bvehicle.fuel 5