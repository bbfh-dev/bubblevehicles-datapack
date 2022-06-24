execute as @e[type=llama, tag=buvs.seat, tag=!-buvs.passenger] if score @s buvs.registry = @p buvs.registry run function bubblevehicles:vehicles/abstracts/player/stopped_riding/seat/driver_execute
execute as @e[type=armor_stand, tag=buvs.controller] if score @s buvs.registry = @p buvs.registry run function bubblevehicles:vehicles/abstracts/player/stopped_riding/controller/instance
execute as @e[type=marker, tag=buvs.origin] if score @s buvs.registry = @p buvs.registry run function bubblevehicles:vehicles/abstracts/origin/raycast_down
tag @s remove buvs.driver