tag @e[type=marker, tag=buvs.origin, distance=..2, limit=1] add btemp.collideTarget
execute if score @s bvehicle.speed matches ..-1 run scoreboard players operation @s bvehicle.speed *= -1 buvs.const
execute if score @s bvehicle.speed matches 200.. run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/collision/damage
scoreboard players set @s bvehicle.speed 0
tag @e[type=marker, tag=buvs.origin, distance=..2, limit=1] remove btemp.collideTarget