function bubblevehicles:vehicles/abstracts/origin/unload

scoreboard players set $Limit bubblevehicles 256
execute at @s run function bubblevehicles:vehicles/abstracts/origin/raycast_down_block

scoreboard players set $Limit bubblevehicles 10
execute at @s if block ~ ~-.1 ~ air run function bubblevehicles:vehicles/abstracts/origin/raycast_down_step