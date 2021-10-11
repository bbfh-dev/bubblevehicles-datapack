scoreboard players set $Clicked bubblevehicles 0
execute if score @s bubblevehicles matches 7 run scoreboard players set $Clicked bubblevehicles 1

function bubblevehicles:vehicles/abstracts/seat/gui
data modify entity @s Items[7].tag.Enchantments set value [{}]
scoreboard players set @s bubblevehicles 7

execute as @e[type=marker, tag=btemp.originC, limit=1] run function bubblevehicles:vehicles/abstracts/player/is_owner
execute if score $Owned bubblevehicles matches 0 run function bubblevehicles:vehicles/abstracts/player/message/interaction/lock/not_owned
execute if score $Owned bubblevehicles matches 1 if score $Clicked bubblevehicles matches 0 run function bubblevehicles:vehicles/abstracts/player/message/interaction/scrap/confirm
execute if score $Owned bubblevehicles matches 1 if score $Clicked bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/scrap/confrimed