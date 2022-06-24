scoreboard players set $HasItem bubblevehicles 0
execute if entity @p[nbt={SelectedItem:{id:"minecraft:leather_helmet"}}] run scoreboard players add $HasItem bubblevehicles 1
execute if entity @p[nbt={SelectedItem:{id:"minecraft:leather_chestplate"}}] run scoreboard players add $HasItem bubblevehicles 1
execute if entity @p[nbt={SelectedItem:{id:"minecraft:leather_leggings"}}] run scoreboard players add $HasItem bubblevehicles 1
execute if entity @p[nbt={SelectedItem:{id:"minecraft:leather_boots"}}] run scoreboard players add $HasItem bubblevehicles 1
execute if score $HasItem bubblevehicles matches 0 run function bubblevehicles:vehicles/abstracts/player/message/interaction/paint/no_item
scoreboard players set $Colored bubblevehicles 0
execute if score $HasItem bubblevehicles matches 1 if data entity @p SelectedItem.tag.display.color run scoreboard players set $Colored bubblevehicles 1
execute if score $HasItem bubblevehicles matches 1 if score $Colored bubblevehicles matches 0 run scoreboard players set @e[type=marker, tag=btemp.originC, limit=1] bvdata.color1 0
execute if score $HasItem bubblevehicles matches 1 if score $Colored bubblevehicles matches 1 store result score @e[type=marker, tag=btemp.originC, limit=1] bvdata.color1 run data get entity @p SelectedItem.tag.display.color
execute if score $HasItem bubblevehicles matches 1 as @e[type=marker, tag=btemp.originC, limit=1] at @s run function bubblevehicles:vehicles/abstracts/origin/unload