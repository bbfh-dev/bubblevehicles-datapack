execute unless score @s buvsInput.angle matches 0 run function bubblevehicles:vehicles/abstracts/controller/steering
execute unless score @s bvehicle.speed matches 0 run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/moving
function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/braking
function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/ground_gravity
function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/acceleration
function bubblevehicles:vehicles/abstracts/controller/gears
execute if score @s bvehicle.speed matches 0 run data modify entity @s NoGravity set value 1b
execute as @s[tag=buvs.POLICE_INTERCEPTOR] run function #bubblevehicles:vehicle/police_interceptor
execute as @s[tag=buvs.POLICE_CRUISER] run function #bubblevehicles:vehicle/police_cruiser
execute as @s[tag=buvs.AMBULANCE] run function #bubblevehicles:vehicle/ambulance
execute as @s[tag=buvs.TANK] run function #bubblevehicles:vehicle/tank