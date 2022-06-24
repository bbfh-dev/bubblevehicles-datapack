execute store success score $Success bubblevehicles run tag @s add bvehicle.locked
execute if score $Success bubblevehicles matches 0 run tag @s remove bvehicle.locked
execute if score $Success bubblevehicles matches 0 run function bubblevehicles:vehicles/abstracts/player/message/interaction/lock/unlocked
execute if score $Success bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/message/interaction/lock/locked