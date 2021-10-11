scoreboard players remove $Limit bubblevehicles 1
execute if block ~ ~-.1 ~ air run tp @s ~ ~-.1 ~ ~ ~
execute if block ~ ~-.1 ~ air positioned ~ ~-.1 ~ if score $Limit bubblevehicles matches 1.. run function bubblevehicles:vehicles/abstracts/origin/raycast_down_step