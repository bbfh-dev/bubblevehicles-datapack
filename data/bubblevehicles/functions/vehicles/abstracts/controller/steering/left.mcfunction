function bubblevehicles:vehicles/abstracts/controller/steering/simple_left
execute unless score @s bvehicle.speed matches -10000..600 run tp @s ~ ~ ~ ~-3 ~
execute unless score @s bvehicle.speed matches -600..10000 run tp @s ~ ~ ~ ~3 ~