execute store result entity @s Strength int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.inventory
data merge entity @s {Items:[{Slot:0b}, {Slot:1b}, {Slot:2b}, {Slot:3b}, {Slot:4b}, {Slot:5b}, {Slot:6b}, {Slot:7b}, {Slot:8b}, {Slot:9b}, {Slot:10b}, {Slot:11b}, {Slot:12b}, {Slot:13b}, {Slot:14b}]}
data modify entity @s Items set from entity @e[type=marker, tag=btemp.originC, limit=1] data.Items
data modify entity @s DecorItem.id set value "minecraft:air"

kill @s
execute as @e[type=marker, tag=btemp.originC, limit=1] at @s run function bubblevehicles:vehicles/abstracts/origin/kill