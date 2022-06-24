execute as @e[type=marker, tag=btemp.originA] run function bubblevehicles:vehicles/abstracts/player/is_owner
execute if score $Owned bubblevehicles matches 0 run tp @p ~ ~ ~ ~ ~
execute if score $Owned bubblevehicles matches 0 run function bubblevehicles:vehicles/abstracts/player/message/interaction/lock/unable_to_open
execute if score $Owned bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/started_riding/seat/run