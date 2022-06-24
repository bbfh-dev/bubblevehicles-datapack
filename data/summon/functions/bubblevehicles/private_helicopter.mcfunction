summon minecraft:marker ~ ~ ~ {Tags:["buvs.PRIVATE_HELICOPTER", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.PRIVATE_HELICOPTER"}, CustomName:'"Private Helicopter"'}

function bubblevehicles:vehicles/abstracts/registry/generate
execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function bubblevehicles:vehicles/private_helicopter/set_properties