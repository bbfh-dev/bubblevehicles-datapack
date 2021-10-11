summon minecraft:marker ~ ~ ~ {Tags:["buvs.SEDAN", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.SEDAN"}, CustomName:'"Sedan"'}

function bubblevehicles:vehicles/abstracts/registry/generate
execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function bubblevehicles:vehicles/sedan/set_properties