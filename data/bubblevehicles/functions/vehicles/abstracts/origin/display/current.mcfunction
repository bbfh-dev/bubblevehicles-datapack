execute store result score @e[type=armor_stand, tag=btemp.controller, limit=1] bvehicle.vectorX run data get entity @s Pos[0] 100
execute store result score @e[type=armor_stand, tag=btemp.controller, limit=1] bvehicle.vectorZ run data get entity @s Pos[2] 100
scoreboard players operation @e[type=armor_stand, tag=btemp.controller, limit=1] bvehicle.vectorX -= $PreviousOriginX bubblevehicles
scoreboard players operation @e[type=armor_stand, tag=btemp.controller, limit=1] bvehicle.vectorZ -= $PreviousOriginZ bubblevehicles

execute if score @e[type=armor_stand, tag=btemp.controller, limit=1] bvehicle.vectorX matches ..-1 run scoreboard players operation @e[type=armor_stand, tag=btemp.controller, limit=1] bvehicle.vectorX *= -1 buvs.const
execute if score @e[type=armor_stand, tag=btemp.controller, limit=1] bvehicle.vectorZ matches ..-1 run scoreboard players operation @e[type=armor_stand, tag=btemp.controller, limit=1] bvehicle.vectorZ *= -1 buvs.const

scoreboard players operation @e[type=armor_stand, tag=btemp.controller, limit=1] bvehicle.vectorA = @e[type=armor_stand, tag=btemp.controller, limit=1] bvehicle.vectorX
execute if score @e[type=armor_stand, tag=btemp.controller, limit=1] bvehicle.vectorZ > @e[type=armor_stand, tag=btemp.controller, limit=1] bvehicle.vectorX run scoreboard players operation @e[type=armor_stand, tag=btemp.controller, limit=1] bvehicle.vectorA = @e[type=armor_stand, tag=btemp.controller, limit=1] bvehicle.vectorZ

scoreboard players set @s bubblevehicles 0