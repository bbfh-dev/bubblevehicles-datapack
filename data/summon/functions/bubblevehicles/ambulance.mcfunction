summon minecraft:marker ~ ~ ~ {Tags:["buvs.AMBULANCE", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.AMBULANCE"}, CustomName:'"Ambulance"'}

function bubblevehicles:vehicles/abstracts/registry/generate
execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function bubblevehicles:vehicles/ambulance/set_properties