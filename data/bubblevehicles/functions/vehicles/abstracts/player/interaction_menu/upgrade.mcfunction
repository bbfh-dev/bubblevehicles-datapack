function bubblevehicles:vehicles/abstracts/seat/gui
data modify entity @s Items[2].tag.Enchantments set value [{}]
scoreboard players set @s bubblevehicles 4

execute as @e[type=marker, tag=btemp.originC, limit=1] run function bubblevehicles:vehicles/abstracts/player/is_owner
execute if score $Owned bubblevehicles matches 0 run function bubblevehicles:vehicles/abstracts/player/message/interaction/lock/not_owned

scoreboard players set $Item bubblevehicles 0
execute if entity @p[nbt={SelectedItem:{tag:{BubbleVehicles:1b}}}] run scoreboard players set $Item bubblevehicles 1
execute if score $Owned bubblevehicles matches 1 if score $Item bubblevehicles matches 0 run title @p actionbar ["You ", {"text":"DON'T HOLD", "bold":true}, " any upgrade block"]
execute if score $Owned bubblevehicles matches 1 if score $Item bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/upgrade/action