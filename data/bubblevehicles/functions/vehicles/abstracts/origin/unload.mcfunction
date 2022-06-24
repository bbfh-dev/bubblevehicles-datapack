tag @s remove buvs.rendered
tag @s add buvs.originTEMP
execute as @e[type=minecraft:armor_stand, tag=buvs.controller] if score @s buvs.registry = @e[type=minecraft:marker, tag=buvs.originTEMP, limit=1] buvs.registry run function bubblevehicles:vehicles/abstracts/controller/unload
execute as @e[type=minecraft:armor_stand, tag=buvs.passenger] if score @s buvs.registry = @e[type=minecraft:marker, tag=buvs.originTEMP, limit=1] buvs.registry run function bubblevehicles:vehicles/abstracts/mesh/unload
execute as @e[type=minecraft:armor_stand, tag=buvs.mesh] if score @s buvs.registry = @e[type=minecraft:marker, tag=buvs.originTEMP, limit=1] buvs.registry run function bubblevehicles:vehicles/abstracts/mesh/unload
execute as @e[type=minecraft:llama, tag=buvs.seat] if score @s buvs.registry = @e[type=minecraft:marker, tag=buvs.originTEMP, limit=1] buvs.registry run function bubblevehicles:vehicles/abstracts/seat/unload
tag @s remove buvs.originTEMP