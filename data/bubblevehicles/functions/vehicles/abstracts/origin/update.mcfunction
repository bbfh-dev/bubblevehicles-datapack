tag @s add buvs.outdated

execute as @a at @s run tp @s ~ ~ ~ ~ ~
function bubblevehicles:vehicles/abstracts/origin/unload
scoreboard players reset @s buvs.registry
tag @s add buvs.loaded
tag @s add buvs.rendered

execute as @s[tag=buvs.MILITARY_HELICOPTER] run function summon:bubblevehicles/military_helicopter
execute as @s[tag=buvs.PRIVATE_HELICOPTER] run function summon:bubblevehicles/private_helicopter
execute as @s[tag=buvs.POLICE_HELICOPTER] run function summon:bubblevehicles/police_helicopter
execute as @s[tag=buvs.POLICE_INTERCEPTOR] run function summon:bubblevehicles/police_interceptor
execute as @s[tag=buvs.POLICE_CRUISER] run function summon:bubblevehicles/police_cruiser
execute as @s[tag=buvs.CABRIOLET] run function summon:bubblevehicles/cabriolet
execute as @s[tag=buvs.AMBULANCE] run function summon:bubblevehicles/ambulance
execute as @s[tag=buvs.SEDAN] run function summon:bubblevehicles/sedan
execute as @s[tag=buvs.BIKE] run function summon:bubblevehicles/bike
execute as @s[tag=buvs.TAXI] run function summon:bubblevehicles/taxi
execute as @s[tag=buvs.TANK] run function summon:bubblevehicles/tank
execute as @s[tag=buvs.VAN] run function summon:bubblevehicles/van

execute if score @s bvdata.digit0 matches -2147483648..2147483647 run scoreboard players operation @e[type=marker, tag=buvs.origin, tag=!buvs.outdated, limit=1, sort=nearest] bvdata.digit0 = @s bvdata.digit0
execute if score @s bvdata.digit1 matches -2147483648..2147483647 run scoreboard players operation @e[type=marker, tag=buvs.origin, tag=!buvs.outdated, limit=1, sort=nearest] bvdata.digit1 = @s bvdata.digit1
execute if score @s bvdata.digit2 matches -2147483648..2147483647 run scoreboard players operation @e[type=marker, tag=buvs.origin, tag=!buvs.outdated, limit=1, sort=nearest] bvdata.digit2 = @s bvdata.digit2
execute if score @s bvdata.digit3 matches -2147483648..2147483647 run scoreboard players operation @e[type=marker, tag=buvs.origin, tag=!buvs.outdated, limit=1, sort=nearest] bvdata.digit3 = @s bvdata.digit3
data modify entity @e[type=marker, tag=buvs.origin, tag=!buvs.outdated, limit=1, sort=nearest] data.Items set from entity @s data.Items
kill @s