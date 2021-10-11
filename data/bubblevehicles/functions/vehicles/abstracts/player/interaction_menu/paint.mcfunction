function bubblevehicles:vehicles/abstracts/seat/gui
data modify entity @s Items[3].tag.Enchantments set value [{}]
scoreboard players set @s bubblevehicles 3

execute if score @e[type=marker, tag=btemp.originC, limit=1] buvs.paint_type matches 0 run function bubblevehicles:vehicles/abstracts/player/message/interaction/paint/not_paintable
execute if score @e[type=marker, tag=btemp.originC, limit=1] buvs.paint_type matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/paint/conditions/leather
execute if score @e[type=marker, tag=btemp.originC, limit=1] buvs.paint_type matches 2 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/paint/conditions/primary