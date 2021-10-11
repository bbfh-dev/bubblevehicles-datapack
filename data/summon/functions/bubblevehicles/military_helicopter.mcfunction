summon minecraft:marker ~ ~ ~ {Tags:["buvs.MILITARY_HELICOPTER", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.MILITARY_HELICOPTER"}, CustomName:'"Military Helicopter"'}

function bubblevehicles:vehicles/abstracts/registry/generate
execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function bubblevehicles:vehicles/military_helicopter/set_properties