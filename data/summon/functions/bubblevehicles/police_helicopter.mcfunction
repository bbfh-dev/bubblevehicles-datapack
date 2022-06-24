summon minecraft:marker ~ ~ ~ {Tags:["buvs.POLICE_HELICOPTER", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.POLICE_HELICOPTER"}, CustomName:'"Police Helicopter"'}

function bubblevehicles:vehicles/abstracts/registry/generate
execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function bubblevehicles:vehicles/police_helicopter/set_properties