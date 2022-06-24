scoreboard players set @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer2 4
scoreboard players add @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer3 1
scoreboard players set @e[type=marker, tag=btemp.origin, limit=1, scores={bvdata.timer3=8..}] bvdata.timer3 0

execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer3 matches 0 run function bubblevehicles:vehicles/police_cruiser/module/action_button/siren/fancy/left1
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer3 matches 1 run function bubblevehicles:vehicles/police_cruiser/module/action_button/siren/fancy/left2
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer3 matches 2 run function bubblevehicles:vehicles/police_cruiser/module/action_button/siren/fancy/left1
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer3 matches 3 run function bubblevehicles:vehicles/police_cruiser/module/action_button/siren/fancy/left2
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer3 matches 4 run function bubblevehicles:vehicles/police_cruiser/module/action_button/siren/fancy/right1
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer3 matches 5 run function bubblevehicles:vehicles/police_cruiser/module/action_button/siren/fancy/right2
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer3 matches 6 run function bubblevehicles:vehicles/police_cruiser/module/action_button/siren/fancy/right1
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer3 matches 7 run function bubblevehicles:vehicles/police_cruiser/module/action_button/siren/fancy/right2
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvehicle.action matches 2 at @e[type=marker, tag=btemp.origin, limit=1] run playsound block.note_block.banjo neutral @a ~ ~ ~ 4 0.5