scoreboard players set $InFreeFall bubblevehicles 0
scoreboard players set $Success bubblevehicles 0

execute as @s[tag=buvs.POLICE_INTERCEPTOR] at @s run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/ground_gravity/cabriolet
execute as @s[tag=buvs.POLICE_CRUISER] at @s run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/ground_gravity/ambulance
execute as @s[tag=buvs.CABRIOLET] at @s run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/ground_gravity/cabriolet
execute as @s[tag=buvs.AMBULANCE] at @s run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/ground_gravity/ambulance
execute as @s[tag=buvs.SEDAN] at @s run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/ground_gravity/sedan
execute as @s[tag=buvs.BIKE] at @s run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/ground_gravity/bike
execute as @s[tag=buvs.TAXI] at @s run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/ground_gravity/ambulance
execute as @s[tag=buvs.TANK] at @s run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/ground_gravity/tank
execute as @s[tag=buvs.VAN] at @s run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/ground_gravity/sedan
execute as @s[tag=buvs.TRACTOR] at @s run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/ground_gravity/tractor
execute as @s[tag=buvs.FORMULA_ONE] at @s run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/ground_gravity/ambulance