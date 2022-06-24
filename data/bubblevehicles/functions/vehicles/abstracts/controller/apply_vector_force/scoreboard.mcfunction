execute store result score $X1 bubblevehicles run data get entity @s Pos[0] 1000
execute store result score $Z1 bubblevehicles run data get entity @s Pos[2] 1000
execute at @s run tp @s ^ ^ ^1
execute store result score $X2 bubblevehicles run data get entity @s Pos[0] 1000
execute store result score $Z2 bubblevehicles run data get entity @s Pos[2] 1000
execute at @s run tp @s ^ ^ ^-1

scoreboard players operation $X2 bubblevehicles -= $X1 bubblevehicles
scoreboard players operation $Z2 bubblevehicles -= $Z1 bubblevehicles

scoreboard players operation $X1 bubblevehicles = $X2 bubblevehicles
scoreboard players operation $X1 bubblevehicles *= @s bvehicle.speed
scoreboard players operation $Z1 bubblevehicles = $Z2 bubblevehicles
scoreboard players operation $Z1 bubblevehicles *= @s bvehicle.speed

scoreboard players operation $X2 bubblevehicles = $X1 bubblevehicles
scoreboard players operation $Z2 bubblevehicles = $Z1 bubblevehicles
execute store result entity @s Motion[0] double 0.000000597 run scoreboard players get $X2 bubblevehicles
execute store result entity @s Motion[2] double 0.000000597 run scoreboard players get $Z2 bubblevehicles