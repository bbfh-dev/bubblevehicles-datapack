scoreboard players add @e[type=marker, tag=btemp.origin, limit=1] bvehicle.action 1
scoreboard players set @e[type=marker, tag=btemp.origin, limit=1, scores={bvehicle.action=2..}] bvehicle.action 0
execute as @e[type=llama, tag=btemp.seat, limit=1] run function bubblevehicles:vehicles/police_helicopter/module/action_button/switch
clear @p #bubblevehicles:vehicle_action/police_helicopter