execute unless score @s bvehicle.speed matches -10000..200 run tp @s ~ ~ ~ ~-2 ~
execute unless score @s bvehicle.speed matches -200..10000 run tp @s ~ ~ ~ ~2 ~
execute if score @s bvehicle.speed matches -200..200 run function bubblevehicles:vehicles/abstracts/controller/steering/complex_left