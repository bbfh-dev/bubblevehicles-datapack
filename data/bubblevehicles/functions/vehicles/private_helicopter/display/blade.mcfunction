tp @s ~ ~ ~
execute at @s run tp @s ~ ~ ~ ~-180 ~
execute at @s as @e[type=minecraft:armor_stand, tag=buvs.passenger, tag=-buvs.blade0] if score @s buvs.registry = @e[type=minecraft:armor_stand, tag=btemp.controller, limit=1] buvs.registry positioned ^ ^ ^ run tp @s ~ ~.25 ~ ~ ~
execute at @s as @e[type=minecraft:armor_stand, tag=buvs.passenger, tag=-buvs.blade1] if score @s buvs.registry = @e[type=minecraft:armor_stand, tag=btemp.controller, limit=1] buvs.registry positioned ^ ^ ^ run tp @s ~ ~-.25 ~ ~ ~