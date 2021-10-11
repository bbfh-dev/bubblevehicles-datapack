execute store result score $ANG bubblevehicles run data get entity @s Rotation[0] 100
scoreboard players operation $ANG bubblevehicles -= @s bvehicle.speed
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get $ANG bubblevehicles