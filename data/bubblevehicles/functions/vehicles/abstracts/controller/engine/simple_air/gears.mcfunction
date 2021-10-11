execute if score @e[type=marker, tag=btemp.origin, limit=1] buvs.gears_count matches 4.. if score @s bvehicle.speed matches -3200..-1801 run scoreboard players set @s bvehicle.gear -4
execute if score @e[type=marker, tag=btemp.origin, limit=1] buvs.gears_count matches 3.. if score @s bvehicle.speed matches -1800..-1201 run scoreboard players set @s bvehicle.gear -3
execute if score @e[type=marker, tag=btemp.origin, limit=1] buvs.gears_count matches 2.. if score @s bvehicle.speed matches -1200..-441 run scoreboard players set @s bvehicle.gear -2
execute if score @e[type=marker, tag=btemp.origin, limit=1] buvs.gears_count matches 1.. if score @s bvehicle.speed matches -440..-1 run scoreboard players set @s bvehicle.gear -1
execute if score @s bvehicle.speed matches 0 run scoreboard players set @s bvehicle.gear 0
execute if score @e[type=marker, tag=btemp.origin, limit=1] buvs.gears_count matches 1.. if score @s bvehicle.speed matches 1..440 run scoreboard players set @s bvehicle.gear 1
execute if score @e[type=marker, tag=btemp.origin, limit=1] buvs.gears_count matches 2.. if score @s bvehicle.speed matches 441..1200 run scoreboard players set @s bvehicle.gear 2
execute if score @e[type=marker, tag=btemp.origin, limit=1] buvs.gears_count matches 3.. if score @s bvehicle.speed matches 1201..1800 run scoreboard players set @s bvehicle.gear 3
execute if score @e[type=marker, tag=btemp.origin, limit=1] buvs.gears_count matches 4.. if score @s bvehicle.speed matches 1801..3200 run scoreboard players set @s bvehicle.gear 4