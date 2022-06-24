setblock ~ 255 ~ air destroy
setblock ~ 255 ~ oak_sign{Text1:'[{"score":{"objective":"bvdata.upgrade3", "name":"@e[type=marker, tag=btemp.originC, limit=1]"}, "color":"light_purple","italic":false}, "/32 Boosts"]'}
data modify entity @s Items[{Slot:6b}].tag.display.Lore append from block ~ 255 ~ Text1
setblock ~ 255 ~ air