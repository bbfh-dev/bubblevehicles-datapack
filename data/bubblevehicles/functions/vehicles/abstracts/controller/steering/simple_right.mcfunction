execute unless score @s bvehicle.speed matches -10000..600 run tp @s ~ ~ ~ ~2 ~
execute unless score @s bvehicle.speed matches -600..10000 run tp @s ~ ~ ~ ~-2 ~
execute if score @s bvehicle.speed matches -600..600 run function bubblevehicles:vehicles/abstracts/controller/steering/complex_right