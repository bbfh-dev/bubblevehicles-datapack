scoreboard players add @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer1 1
scoreboard players remove @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer2 1
scoreboard players remove @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer4 1
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer1 matches 1..200 if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer2 matches ..0 run function bubblevehicles:vehicles/police_interceptor/module/action_button/siren/quick
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer1 matches 201..400 if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer2 matches ..0 run function bubblevehicles:vehicles/police_interceptor/module/action_button/siren/slow
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer1 matches 401..600 if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer2 matches ..0 run function bubblevehicles:vehicles/police_interceptor/module/action_button/siren/fancy
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer1 matches 601.. run scoreboard players set @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer1 0
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer4 matches ..0 run function bubblevehicles:vehicles/police_interceptor/module/action_button/siren/flashers