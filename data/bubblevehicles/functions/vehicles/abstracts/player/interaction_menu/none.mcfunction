function bubblevehicles:vehicles/abstracts/seat/gui
scoreboard players set @s bubblevehicles 0

execute as @e[type=marker, tag=btemp.originC, limit=1] run function bubblevehicles:vehicles/abstracts/player/interaction_menu/none/info