execute store result score $ANG bubblevehicles run data get entity @s Rotation[0] 100
scoreboard players operation $Temp bubblevehicles = @s bvehicle.speed
scoreboard players operation $Temp bubblevehicles *= 7 buvs.const
scoreboard players operation $Temp bubblevehicles /= 4 buvs.const
scoreboard players operation $ANG bubblevehicles -= $Temp bubblevehicles
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get $ANG bubblevehicles