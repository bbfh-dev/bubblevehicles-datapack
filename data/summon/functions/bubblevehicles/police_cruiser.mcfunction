summon minecraft:marker ~ ~ ~ {Tags:["buvs.POLICE_CRUISER", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.POLICE_CRUISER"}, CustomName:'"Police Cruiser"'}

function bubblevehicles:vehicles/abstracts/registry/generate
execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function bubblevehicles:vehicles/police_cruiser/set_properties