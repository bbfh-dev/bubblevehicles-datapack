summon minecraft:marker ~ ~ ~ {Tags:["buvs.TAXI", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.TAXI"}, CustomName:'"Taxi"'}

function bubblevehicles:vehicles/abstracts/registry/generate
execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function bubblevehicles:vehicles/taxi/set_properties