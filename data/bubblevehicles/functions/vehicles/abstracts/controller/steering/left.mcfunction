function bubblevehicles:vehicles/abstracts/controller/steering/simple_left
execute unless score @s bvehicle.speed matches -10000..500 run tp @s ~ ~ ~ ~-6 ~
execute unless score @s bvehicle.speed matches -500..10000 run tp @s ~ ~ ~ ~6 ~