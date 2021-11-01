execute rotated ~ 0 positioned ^ ^0.625 ^0.625 run function bubblevehicles:vehicles/military_helicopter/module/action_button/raycast
execute as @e[type=llama, tag=btemp.seat, limit=1] run function bubblevehicles:vehicles/tank/module/action_button/button/state
clear @p #bubblevehicles:vehicle_action/tank{BubbleVehicles:1b}