scoreboard players remove @s bvehicle.sound 1
data modify entity @s NoGravity set value 0b
function bubblevehicles:vehicles/abstracts/controller/apply_vector_force
function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/collision
execute if score $FuelUsage buvs.settings matches 1 run execute unless score @p buvsInput.value matches 0 run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/fuel
function bubblevehicles:vehicles/abstracts/controller/display_fuel
execute if score @s bvehicle.sound matches ..0 run function bubblevehicles:vehicles/abstracts/controller/engine_sound