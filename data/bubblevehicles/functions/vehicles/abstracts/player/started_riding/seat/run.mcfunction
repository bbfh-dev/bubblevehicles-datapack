data merge entity @s {Age:-2147483648}
scoreboard players operation @p buvs.registry = @s buvs.registry
execute as @e[type=minecraft:armor_stand, tag=buvs.controller] if score @s buvs.registry = @p buvs.registry run tag @s add buvs.driven
tag @p add buvs.driver

execute store result entity @s Strength int 1 run scoreboard players get @e[type=marker, tag=btemp.originA, limit=1] buvs.inventory
data merge entity @s {Items:[{Slot:0b}, {Slot:1b}, {Slot:2b}, {Slot:3b}, {Slot:4b}, {Slot:5b}, {Slot:6b}, {Slot:7b}, {Slot:8b}, {Slot:9b}, {Slot:10b}, {Slot:11b}, {Slot:12b}, {Slot:13b}, {Slot:14b}]}
data modify entity @s Items set from entity @e[type=marker, tag=btemp.originA, limit=1] data.Items
data modify entity @s DecorItem.id set value "minecraft:air"
execute if score @e[type=marker, tag=btemp.originA, limit=1] buvs.actions matches 1 run function bubblevehicles:vehicles/abstracts/player/started_riding/seat/actions