function bubblevehicles:vehicles/abstracts/seat/gui
data modify entity @s Items[4].tag.Enchantments set value [{}]
scoreboard players set @s bubblevehicles 4

title @p subtitle ["Is ", {"text":"NOT", "bold":true}, " avaialable in this version"]
title @p title "This feature"