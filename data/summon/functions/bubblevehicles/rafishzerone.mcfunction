summon minecraft:armor_stand ~ ~-1.05 ~ {Tags:["buvs.origin", "-buvs.notset"], Invisible:1b, NoBasePlate:1b, Invulnerable:1b, Silent:1b, NoGravity:1b, Pose:{Head:[0f, 0f, 180f]}, ArmorItems:[{}, {}, {}, {id:"minecraft:firework_star", Count:1b, tag:{CustomModelData:10000}}], Passengers:[{id:"minecraft:armor_stand", Tags:["buvs.wheels", "-buvs.notset"], Invisible:1b, NoBasePlate:1b, Invulnerable:1b, Silent:1b, NoGravity:1b, Marker:1b, ArmorItems:[{}, {}, {}, {id:"minecraft:firework_star", Count:1b, tag:{CustomModelData:102}}]}, {id:"minecraft:armor_stand", Tags:["buvs.lights", "-buvs.notset"], Invisible:1b, NoBasePlate:1b, Invulnerable:1b, Silent:1b, NoGravity:1b, Marker:1b, ArmorItems:[{}, {}, {}, {id:"minecraft:firework_star", Count:1b, tag:{CustomModelData:11100}}]}]}
scoreboard players add $Score buvs.registry 1
scoreboard players operation @e[type=minecraft:armor_stand, tag=buvs.origin, tag=-buvs.notset, limit=1] buvs.registry = $Score buvs.registry
scoreboard players operation @e[type=minecraft:armor_stand, tag=buvs.wheels, tag=-buvs.notset, limit=1] buvs.registry = $Score buvs.registry
scoreboard players operation @e[type=minecraft:armor_stand, tag=buvs.lights, tag=-buvs.notset, limit=1] buvs.registry = $Score buvs.registry
tag @e[type=minecraft:armor_stand, tag=buvs.origin, tag=-buvs.notset, limit=1] remove -buvs.notset
tag @e[type=minecraft:armor_stand, tag=buvs.wheels, tag=-buvs.notset, limit=1] remove -buvs.notset
tag @e[type=minecraft:armor_stand, tag=buvs.lights, tag=-buvs.notset, limit=1] remove -buvs.notset
