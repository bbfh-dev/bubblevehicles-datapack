scoreboard players set @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer2 5
scoreboard players add @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer3 1
scoreboard players set @e[type=marker, tag=btemp.origin, limit=1, scores={bvdata.timer3=2..}] bvdata.timer3 0

execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer3 matches 0 run function bubblevehicles:vehicles/ambulance/module/action_button/siren/quick/left
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer3 matches 1 run function bubblevehicles:vehicles/ambulance/module/action_button/siren/quick/right
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvehicle.action matches 2 at @e[type=marker, tag=btemp.origin, limit=1] run playsound block.note_block.bell neutral @a ~ ~ ~ 4 0.5