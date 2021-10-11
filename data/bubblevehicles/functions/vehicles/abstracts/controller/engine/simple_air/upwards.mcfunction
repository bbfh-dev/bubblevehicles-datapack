execute if score @s bvehicle.upwards matches -1 at @s if block ~ ~-.5 ~ #bubblevehicles:air run tp @s ~ ~-.5 ~ ~ ~
execute if score @s bvehicle.upwards matches 1 at @s if block ~ ~.5 ~ #bubblevehicles:air if block ~ ~1.5 ~ #bubblevehicles:air run tp @s ~ ~.5 ~ ~ ~
scoreboard players set @s bvehicle.upwards 0