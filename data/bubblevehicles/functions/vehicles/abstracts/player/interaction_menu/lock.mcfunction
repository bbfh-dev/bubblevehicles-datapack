function bubblevehicles:vehicles/abstracts/seat/gui
data modify entity @s Items[1].tag.Enchantments set value [{}]
scoreboard players set @s bubblevehicles 1

execute as @e[type=marker, tag=btemp.originC, limit=1] run function bubblevehicles:vehicles/abstracts/player/interaction_menu/lock/conditions