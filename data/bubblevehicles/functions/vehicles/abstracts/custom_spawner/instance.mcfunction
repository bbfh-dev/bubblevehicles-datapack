summon minecraft:marker ~ ~ ~ {Tags:["buvs.origin", "bubblevehicles", "buvs.notset"]}
tag @s add btemp.CUSTOM_SPAWNER
execute as @e[type=marker, tag=buvs.origin, tag=buvs.notset] run function bubblevehicles:vehicles/abstracts/custom_spawner/origin
kill @s