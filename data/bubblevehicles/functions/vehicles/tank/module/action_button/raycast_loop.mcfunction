scoreboard players remove $RaycastLimit bubblevehicles 1
execute if block ^ ^ ^1 #bubblevehicles:air run tp @s ^ ^ ^1
execute if score $RaycastLimit bubblevehicles matches 0 unless block ^ ^ ^1 #bubblevehicles:air run function bubblevehicles:vehicles/tank/module/action_button/instance
execute if score $RaycastLimit bubblevehicles matches 1.. unless block ^ ^ ^1 #bubblevehicles:air run function bubblevehicles:vehicles/tank/module/action_button/instance
execute if score $RaycastLimit bubblevehicles matches 1.. if block ^ ^ ^1 #bubblevehicles:air positioned ^ ^ ^1 run function bubblevehicles:vehicles/tank/module/action_button/raycast_loop