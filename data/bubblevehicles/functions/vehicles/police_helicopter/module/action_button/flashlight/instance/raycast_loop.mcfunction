scoreboard players remove $Limit bubblevehicles 1
execute if block ^ ^ ^1 #bubblevehicles:air run tp @s ^ ^ ^1
execute unless block ^ ^ ^1 #bubblevehicles:air align xyz positioned ~.5 ~.5 ~.5 run function bubblevehicles:vehicles/police_helicopter/module/action_button/flashlight/instance/light_up
execute if score $Limit bubblevehicles matches 1.. if block ^ ^ ^1 #bubblevehicles:air positioned ^ ^ ^1 run function bubblevehicles:vehicles/police_helicopter/module/action_button/flashlight/instance/raycast_loop