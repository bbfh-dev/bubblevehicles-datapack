tag @e[type=marker] remove btemp.originB
execute as @e[type=marker, tag=buvs.origin] if score @s buvs.registry = @p buvs.registry run tag @s add btemp.originB
tag @e[type=marker] remove btemp.originC
execute as @e[type=marker, tag=buvs.origin] if score @s buvs.registry = @p buvs.registry run tag @s add btemp.originC
data modify entity @e[type=marker, tag=btemp.originB, limit=1] data.Items set from entity @s Items
data merge entity @s {Items:[{Slot:0b}, {Slot:1b}, {Slot:2b}, {Slot:3b}, {Slot:4b}, {Slot:5b}, {Slot:6b}, {Slot:7b}, {Slot:8b}, {Slot:9b}, {Slot:10b}, {Slot:11b}, {Slot:12b}, {Slot:13b}, {Slot:14b}]}
data modify entity @s Strength set value 3
data modify entity @s DecorItem set value {Count:0b}
function bubblevehicles:vehicles/abstracts/seat/gui
tag @p remove buvs.driver
data merge entity @s {Age:0}