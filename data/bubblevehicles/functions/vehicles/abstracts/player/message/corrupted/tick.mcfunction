scoreboard players set $Debug bubblevehicles 1
tellraw @a "\u250c\u2500\u2500\u2500\u2500 BubbleVehicles Debug \u2500\u2500\u2500\u2500\u2500"
tellraw @a ["\u2502\n", {"text":"\u2502  \u258f\u258e\u258d\u258c\u258b\u258a Datapack is corrupted \u258a\u258b\u258c\u258d\u258e\u258f"}]
tellraw @a ["\u2502 ", {"text":"#minecraft:tick is corrupted by some other datapack.\n\u2502 Datapack might not work correctly.", "color":"red"}, "\n\u2502"]
tellraw @a ["\u2502 ", {"text":"Possible Solutions:\n\u2502 1. Disable other datapacks until this message\n\u2502  stops appearing in chat.", "color":"white"}, "\n\u2502"]
tellraw @a ["\u2502 ", {"text":"[Click here to view installed datapacks]", "color":"aqua", "clickEvent":{"action":"run_command", "value":"/datapack list enabled"}}, "\n\u2502"]
tellraw @a "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"