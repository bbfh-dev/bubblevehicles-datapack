summon minecraft:marker ~ ~ ~ {Tags:["buvs.BIKE", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.BIKE"}, CustomName:'"Bike"'}

function bubblevehicles:vehicles/abstracts/registry/generate
execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function bubblevehicles:vehicles/bike/set_properties