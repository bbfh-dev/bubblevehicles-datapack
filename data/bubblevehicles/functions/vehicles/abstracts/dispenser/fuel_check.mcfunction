scoreboard players set $Dispensered bubblevehicles 0
execute if block ~-1 ~ ~ dispenser run scoreboard players set $Dispensered bubblevehicles 1
execute if block ~1 ~ ~ dispenser run scoreboard players set $Dispensered bubblevehicles 2
execute if block ~ ~-1 ~ dispenser run scoreboard players set $Dispensered bubblevehicles 3
execute if block ~ ~1 ~ dispenser run scoreboard players set $Dispensered bubblevehicles 4
execute if block ~ ~ ~-1 dispenser run scoreboard players set $Dispensered bubblevehicles 5
execute if block ~ ~ ~1 dispenser run scoreboard players set $Dispensered bubblevehicles 6
execute if score $Dispensered bubblevehicles matches 1.. align xyz positioned ~.5 ~.5 ~.5 run function bubblevehicles:vehicles/abstracts/dispenser/instance