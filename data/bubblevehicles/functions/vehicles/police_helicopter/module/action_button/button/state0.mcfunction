data modify entity @s DecorItem set value {id:"minecraft:redstone_lamp", Count:1b, BubbleVehicles:1b, tag:{display:{Name:'[{"text":"", "italic":false}, {"text":"Click to ","color":"#a3a5a8"}, {"text":"Turn the flashers on","color":"#D354FF","bold":true}]', Lore:['[{"text":"", "italic":false},{"text":"[\\u2666] \\u0020","color":"gray"},{"text":"-> (\\u2663)","color":"#D354FF"}]']}}}
execute as @e[type=marker, tag=buvs.light] if score @s buvs.registry = @p[tag=btemp.playerV] buvs.registry at @s run function bubblevehicles:vehicles/abstracts/light/kill