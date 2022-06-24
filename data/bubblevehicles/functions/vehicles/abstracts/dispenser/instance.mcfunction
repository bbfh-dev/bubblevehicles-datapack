scoreboard players set $Manual bubblevehicles 1
scoreboard players set $HasFuel bubblevehicles 2
tag @s add buvs.blazeFuel
execute as @e[type=marker, tag=buvs.origin, distance=..3, limit=1, sort=nearest] unless score @s bvehicle.fuel = @s buvs.TankCap run function bubblevehicles:vehicles/abstracts/dispenser/action
tag @s remove buvs.blazeFuel
scoreboard players set $Manual bubblevehicles 0