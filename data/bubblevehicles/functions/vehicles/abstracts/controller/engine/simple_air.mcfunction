execute unless score @p buvsInput.value matches 0 run function bubblevehicles:vehicles/abstracts/controller/engine/simple_air/keys/moving
execute if score @p buvsInput.value matches 0 run function bubblevehicles:vehicles/abstracts/controller/engine/simple_air/keys/idle
execute unless score @s bvehicle.upwards matches 0 run function bubblevehicles:vehicles/abstracts/controller/engine/simple_air/upwards
execute unless score @s bvehicle.speed matches 0 run function bubblevehicles:vehicles/abstracts/controller/engine/simple_air/moving
function bubblevehicles:vehicles/abstracts/controller/engine/simple_air/fuel
function bubblevehicles:vehicles/abstracts/controller/engine/simple_air/gears
scoreboard players remove @s bvehicle.sound 1
execute if score @s bvehicle.sound matches ..0 run function bubblevehicles:vehicles/abstracts/controller/engine/simple_air/sound
execute if score @s bvehicle.speed matches 0 run data modify entity @s NoGravity set value 1b
execute as @s[tag=buvs.MILITARY_HELICOPTER] run function #bubblevehicles:vehicle/military_helicopter
execute as @s[tag=buvs.POLICE_HELICOPTER] run function #bubblevehicles:vehicle/police_helicopter