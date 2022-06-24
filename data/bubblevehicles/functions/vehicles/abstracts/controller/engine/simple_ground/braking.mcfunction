execute as @s[scores={bvehicle.speed=1..}] if score @p buvsInput.value matches -1 run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/braking/brake

execute as @s[scores={bvehicle.speed=..-1}] if score @p buvsInput.value matches 1 run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/braking/rear_brake
execute as @s[scores={bvehicle.speed=..-1}] if score @p buvsInput.value matches -1 unless score @s bvehicle.brake matches -1 run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/braking/rear_gear

execute if score @p buvsInput.value matches 0 if score @s bvehicle.brake matches -1..2 run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/braking/reset