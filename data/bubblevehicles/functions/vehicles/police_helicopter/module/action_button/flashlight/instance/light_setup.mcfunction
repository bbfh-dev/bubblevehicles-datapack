execute as @e[type=marker, tag=buvs.light] if score @s buvs.registry = @p[tag=btemp.playerV] buvs.registry at @s run function bubblevehicles:vehicles/abstracts/light/kill
scoreboard players operation @s buvs.registry = @p[tag=btemp.playerV] buvs.registry
setblock ~ ~ ~ light[level=15] keep
tag @s remove buvs.notset