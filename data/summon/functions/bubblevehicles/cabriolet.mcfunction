summon minecraft:marker ~ ~ ~ {Tags:["buvs.CABRIOLET", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.CABRIOLET"}, CustomName:'"Cabriolet"'}

function bubblevehicles:vehicles/abstracts/registry/generate
execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function bubblevehicles:vehicles/cabriolet/set_properties