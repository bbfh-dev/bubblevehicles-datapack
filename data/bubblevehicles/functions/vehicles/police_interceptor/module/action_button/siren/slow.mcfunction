scoreboard players set @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer2 15
scoreboard players add @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer3 1
scoreboard players set @e[type=marker, tag=btemp.origin, limit=1, scores={bvdata.timer3=2..}] bvdata.timer3 0

execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer3 matches 0 run function bubblevehicles:vehicles/police_interceptor/module/action_button/siren/slow/left
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer3 matches 1 run function bubblevehicles:vehicles/police_interceptor/module/action_button/siren/slow/right
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvehicle.action matches 2 at @e[type=marker, tag=btemp.origin, limit=1] run playsound block.note_block.pling neutral @a ~ ~ ~ 4 0.5