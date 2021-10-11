scoreboard players add @e[type=marker, tag=btemp.origin, limit=1] bvehicle.action 1
scoreboard players set @e[type=marker, tag=btemp.origin, limit=1, scores={bvehicle.action=3..}] bvehicle.action 0
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvehicle.action matches 0 run function bubblevehicles:vehicles/police_cruiser/module/action_button/siren/idle
execute as @e[type=llama, tag=btemp.seat, limit=1] run function bubblevehicles:vehicles/police_cruiser/module/action_button/switch
clear @p #bubblevehicles:vehicle_action/police_cruiser