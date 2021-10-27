execute unless score @s bvehicle.brake matches 1 if score @s bvehicle.speed matches ..-1 run function bubblevehicles:vehicles/abstracts/controller/gears/rear
execute if score @s bvehicle.speed matches 0 run scoreboard players set @s bvehicle.gear 0
execute if score @s bvehicle.speed matches 1..440 run function bubblevehicles:vehicles/abstracts/controller/gears/first
execute if score @s bvehicle.speed matches 441..960 run function bubblevehicles:vehicles/abstracts/controller/gears/second
execute if score @s bvehicle.speed matches 961..1600 run function bubblevehicles:vehicles/abstracts/controller/gears/third
execute if score @s bvehicle.speed matches 1601..3300 run function bubblevehicles:vehicles/abstracts/controller/gears/fourth
execute if score @s bvehicle.speed matches 3301..5800 run function bubblevehicles:vehicles/abstracts/controller/gears/fifth
execute if score @s bvehicle.speed matches 5801..7300 run function bubblevehicles:vehicles/abstracts/controller/gears/sixth