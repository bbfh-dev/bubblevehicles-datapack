scoreboard players operation $Max_Speed bubblevehicles = @e[type=marker, tag=btemp.origin, limit=1] buvs.max_speed
scoreboard players operation $Max_Speed bubblevehicles /= 6 buvs.const
execute if score @s bvehicle.speed > $Max_Speed bubblevehicles run scoreboard players operation @s bvehicle.speed = $Max_Speed bubblevehicles
execute at @s run particle campfire_cosy_smoke ^ ^.5 ^.5 0.6 0.2 0.6 0.01 1