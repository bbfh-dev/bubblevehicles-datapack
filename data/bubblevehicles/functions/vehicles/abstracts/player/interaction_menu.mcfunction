advancement revoke @s only bubblevehicles:event/vehicle_interaction
execute if predicate bubblevehicles:player/event/looking_at_llama if entity @e[type=llama, tag=buvs.team, distance=..4] anchored eyes run particle minecraft:dust 0.522 0.941 0.18 0.5 ^ ^ ^1 0 0 0 0.3 1
execute store success score $Success bubblevehicles run clear @s #bubblevehicles:vehicle_buttons{VehicleAction:1b} 0
execute if score $Success bubblevehicles matches 1 as @e[type=!player, tag=buvs.team, distance=..4] run function bubblevehicles:vehicles/abstracts/player/interaction_menu/handler