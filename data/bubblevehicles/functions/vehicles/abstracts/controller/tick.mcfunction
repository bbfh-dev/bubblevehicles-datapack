tag @e[type=minecraft:armor_stand, tag=buvs.controller] remove btemp.controller
tag @e[type=minecraft:marker, tag=buvs.origin] remove btemp.origin
tag @e[type=minecraft:llama, tag=buvs.seat] remove btemp.seat
tag @a remove btemp.driver
execute as @e[type=minecraft:marker, tag=buvs.origin] if score @s buvs.registry = @p buvs.registry run tag @s add btemp.origin
execute as @e[type=minecraft:llama, tag=buvs.seat, tag=!-buvs.passenger] if score @s buvs.registry = @p buvs.registry run tag @s add btemp.seat
tag @s add btemp.controller
tag @p add btemp.driver

execute at @s run function bubblevehicles:vehicles/abstracts/controller/display
function bubblevehicles:vehicles/abstracts/controller/defaults
clear @p #bubblevehicles:vehicle_action/all

execute if score @e[type=marker, tag=btemp.origin, limit=1] bvehicle.health matches ..0 if score @e[type=marker, tag=btemp.origin, limit=1] buvs.engine_type matches 1 at @s if block ~ ~-.5 ~ #bubblevehicles:air run tp @s ~ ~-.5 ~ ~ ~
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvehicle.health matches 1.. run function bubblevehicles:vehicles/abstracts/controller/handler