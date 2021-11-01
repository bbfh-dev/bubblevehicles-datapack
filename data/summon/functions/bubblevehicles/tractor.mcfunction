summon minecraft:marker ~ ~ ~ {Tags:["buvs.TRACTOR", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.TRACTOR"}, CustomName:'"Tractor"'}

function bubblevehicles:vehicles/abstracts/registry/generate
execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function bubblevehicles:vehicles/tractor/set_properties