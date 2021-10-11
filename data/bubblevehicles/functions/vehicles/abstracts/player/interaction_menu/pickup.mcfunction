function bubblevehicles:vehicles/abstracts/seat/gui
data modify entity @s Items[5].tag.Enchantments set value [{}]
scoreboard players set @s bubblevehicles 5

execute unless entity @p[gamemode=creative] run function bubblevehicles:vehicles/abstracts/player/message/interaction/pickup/not_creative_mode
execute if entity @p[gamemode=creative] run function bubblevehicles:vehicles/abstracts/player/interaction_menu/pickup/pack_vehicle