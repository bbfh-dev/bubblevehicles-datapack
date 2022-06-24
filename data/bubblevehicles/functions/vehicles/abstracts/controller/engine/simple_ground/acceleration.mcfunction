execute if score @e[type=marker, tag=btemp.origin, limit=1] bvehicle.fuel matches ..0 run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/accelerate/no_fuel
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvehicle.fuel matches 1.. run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/accelerate/fueled_up
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvehicle.health > @e[type=marker, tag=btemp.origin, limit=1] buvs.health_cap if score @s bvehicle.speed > @e[type=marker, tag=btemp.origin, limit=1] buvs.MaxSpeed run scoreboard players operation @s bvehicle.speed = @e[type=marker, tag=btemp.origin, limit=1] buvs.MaxSpeed
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvehicle.health <= @e[type=marker, tag=btemp.origin, limit=1] buvs.health_cap run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/acceleration_broken
execute if score @s bvehicle.speed < @e[type=marker, tag=btemp.origin, limit=1] buvs.min_speed run scoreboard players operation @s bvehicle.speed = @e[type=marker, tag=btemp.origin, limit=1] buvs.min_speed