advancement revoke @s only bubblevehicles:event/summon_trader
execute unless entity @e[type=villager, name="BubbleVehicles Trader", distance=..64] run summon villager ~ 256 ~ {CustomName:'"BubbleVehicles"', Tags:["buvs.natualy_spawned"]}
execute as @e[type=villager, name="BubbleVehicles", limit=1, sort=nearest] run spreadplayers ~ ~ 32 32 false @s
execute as @e[type=villager, name="BubbleVehicles", limit=1, sort=nearest] run tp @s @e[type=villager, name=!"BubbleVehicles", limit=1, sort=random, distance=..64]
execute unless entity @e[type=villager, name="BubbleVehicles Trader", distance=..64] run title @s actionbar ["a ", {"text":"BubbleVehicles Trader", "bold":true}, " has spawned somewhere in the village"]