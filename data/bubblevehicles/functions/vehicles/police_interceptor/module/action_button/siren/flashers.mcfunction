scoreboard players set @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer4 5
scoreboard players set $Success bubblevehicles 0
execute as @s[tag=!+buvs.flashed] run function bubblevehicles:vehicles/police_interceptor/module/action_button/siren/flashers/left
execute if score $Success bubblevehicles matches 0 as @s[tag=+buvs.flashed] run function bubblevehicles:vehicles/police_interceptor/module/action_button/siren/flashers/right