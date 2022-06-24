execute if score @s bvehicle.speed matches -500..500 run function bubblevehicles:vehicles/abstracts/controller/steering/complex_right
execute unless score @s bvehicle.speed matches -10000..500 run tp @s ~ ~ ~ ~4 ~
execute unless score @s bvehicle.speed matches -500..10000 run tp @s ~ ~ ~ ~-4 ~