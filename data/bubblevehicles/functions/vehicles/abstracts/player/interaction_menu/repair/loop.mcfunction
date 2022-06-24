execute store success score $ClearedI bubblevehicles run clear @p copper_ingot 1
execute if score $ClearedI bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/repair/add_points

scoreboard players set $ClearedB bubblevehicles 0
execute if score $ClearedI bubblevehicles matches 0 store success score $ClearedB bubblevehicles run clear @p copper_block 1
execute if score $ClearedB bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/repair/add_points
execute if score $ClearedB bubblevehicles matches 1 run give @p copper_ingot 8

scoreboard players set $Success bubblevehicles 0
execute store result score $CopperBlocks bubblevehicles run clear @p copper_block 0
execute store result score $CopperIngots bubblevehicles run clear @p copper_ingot 0
execute if score $CopperBlocks bubblevehicles matches 1.. run scoreboard players set $Success bubblevehicles 1
execute if score $CopperIngots bubblevehicles matches 1.. run scoreboard players set $Success bubblevehicles 1
execute if score @e[type=marker, tag=btemp.originC, limit=1] bvehicle.health = @e[type=marker, tag=btemp.originC, limit=1] buvs.health run function bubblevehicles:vehicles/abstracts/player/message/interaction/repair/vehicle_is_repaired
execute if score $Success bubblevehicles matches 1 unless score @e[type=marker, tag=btemp.originC, limit=1] bvehicle.health = @e[type=marker, tag=btemp.originC, limit=1] buvs.health run function bubblevehicles:vehicles/abstracts/player/interaction_menu/repair/loop