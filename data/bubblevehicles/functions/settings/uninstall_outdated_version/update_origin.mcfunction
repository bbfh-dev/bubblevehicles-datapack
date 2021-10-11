tag @e[type=marker] remove btmp.originA
tag @s add btmp.originA
execute as @e[type=armor_stand, tag=buvs.controller] if score @s buvs.registry = @e[type=marker, tag=buvs.origin, limit=1, sort=nearest] buvs.registry run kill @s
execute as @e[type=llama, tag=buvs.seat] if score @s buvs.registry = @e[type=marker, tag=buvs.origin, limit=1, sort=nearest] buvs.registry as @s[tag=vehicle.locked] run data modify entity @e[type=marker, tag=buvs.origin, limit=1, sort=nearest] Tags append value "vehicle.locked"
execute as @e[type=llama, tag=buvs.seat] if score @s buvs.registry = @e[type=marker, tag=buvs.origin, limit=1, sort=nearest] buvs.registry run kill @s
execute as @e[type=armor_stand, tag=buvs.mesh] if score @s buvs.registry = @e[type=marker, tag=buvs.origin, limit=1, sort=nearest] buvs.registry run kill @s
execute as @e[tag=buvs.blade] if score @s buvs.registry = @e[type=marker, tag=buvs.origin, limit=1, sort=nearest] buvs.registry run kill @s

tag @s add buvs.outdated
tag @s remove buvs.loaded
tag @s remove buvs.rendered

scoreboard players reset * buvs.registry

execute as @s[tag=buvs.bike] run function summon:bubblevehicles/bike
execute as @s[tag=buvs.cabriolet] run function summon:bubblevehicles/cabriolet
execute as @s[tag=buvs.military_helicopter] run kill @s
execute as @s[tag=buvs.police_car] run function summon:bubblevehicles/police_cruiser
execute as @s[tag=buvs.private_helicopter] run function summon:bubblevehicles/private_helicopter
execute as @s[tag=buvs.supercar] run kill @s
execute as @s[tag=buvs.van] run function summon:bubblevehicles/van

execute if score @s bvehicle.keyA matches -2147483648..2147483647 run scoreboard players operation @e[type=marker, tag=buvs.origin, tag=!buvs.outdated, limit=1, sort=nearest] bvdata.digit0 = @s bvehicle.keyA
execute if score @s bvehicle.keyA matches -2147483648..2147483647 run scoreboard players operation @e[type=marker, tag=buvs.origin, tag=!buvs.outdated, limit=1, sort=nearest] bvdata.digit1 = @s bvehicle.keyB
execute if score @s bvehicle.keyA matches -2147483648..2147483647 run scoreboard players operation @e[type=marker, tag=buvs.origin, tag=!buvs.outdated, limit=1, sort=nearest] bvdata.digit2 = @s bvehicle.keyC
execute if score @s bvehicle.keyA matches -2147483648..2147483647 run scoreboard players operation @e[type=marker, tag=buvs.origin, tag=!buvs.outdated, limit=1, sort=nearest] bvdata.digit3 = @s bvehicle.keyD
execute as @s[tag=vehicle.locked] run tag @e[type=marker, tag=buvs.origin, tag=!buvs.outdated, limit=1, sort=nearest] add bvehicle.locked
data modify entity @e[type=marker, tag=buvs.origin, tag=!buvs.outdated, limit=1, sort=nearest] data.Items set from entity @s data.Items
kill @s