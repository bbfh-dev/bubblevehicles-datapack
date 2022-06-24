execute if score @p buvsInput.angle matches -1 run scoreboard players set @s bvehicle.upwards -1
execute if score @p buvsInput.angle matches 1 run scoreboard players set @s bvehicle.upwards 1
execute if score @s bvehicle.speed matches ..-2 run scoreboard players operation @s bvehicle.speed += @e[type=marker, tag=btemp.origin, limit=1] buvs.accelerate5
execute if score @s bvehicle.speed matches -1 run scoreboard players operation @s bvehicle.speed += @e[type=marker, tag=btemp.origin, limit=1] buvs.accelerate6
execute if score @s bvehicle.speed matches 1 run scoreboard players operation @s bvehicle.speed -= @e[type=marker, tag=btemp.origin, limit=1] buvs.accelerate6
execute if score @s bvehicle.speed matches 2.. run scoreboard players operation @s bvehicle.speed -= @e[type=marker, tag=btemp.origin, limit=1] buvs.accelerate5