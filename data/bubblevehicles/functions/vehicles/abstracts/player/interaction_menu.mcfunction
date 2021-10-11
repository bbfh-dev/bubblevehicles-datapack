advancement revoke @s only bubblevehicles:event/vehicle_interaction
execute store success score $Success bubblevehicles run clear @s #bubblevehicles:vehicle_buttons{VehicleAction:1b} 0
execute if score $Success bubblevehicles matches 1 as @e[type=!player, team=bubblevehicles, distance=..4] run function bubblevehicles:vehicles/abstracts/player/interaction_menu/handler