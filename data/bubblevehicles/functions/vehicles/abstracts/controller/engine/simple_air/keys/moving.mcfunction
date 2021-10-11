execute if score @p buvsInput.angle matches -1 at @s run tp @s ~ ~ ~ ~-5 ~
execute if score @p buvsInput.angle matches 1 at @s run tp @s ~ ~ ~ ~5 ~
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvehicle.fuel matches ..0 run function bubblevehicles:vehicles/abstracts/controller/engine/simple_air/keys/no_fuel
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvehicle.fuel matches 1.. run function bubblevehicles:vehicles/abstracts/controller/engine/simple_air/keys/fueled_up
execute if score @s bvehicle.speed > @e[type=marker, tag=btemp.origin, limit=1] buvs.max_speed run scoreboard players operation @s bvehicle.speed = @e[type=marker, tag=btemp.origin, limit=1] buvs.max_speed
execute if score @s bvehicle.speed < @e[type=marker, tag=btemp.origin, limit=1] buvs.min_speed run scoreboard players operation @s bvehicle.speed = @e[type=marker, tag=btemp.origin, limit=1] buvs.min_speed
data modify entity @s NoGravity set value 0b