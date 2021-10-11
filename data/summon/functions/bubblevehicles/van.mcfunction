summon minecraft:marker ~ ~ ~ {Tags:["buvs.VAN", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.VAN"}, CustomName:'"Van"'}

function bubblevehicles:vehicles/abstracts/registry/generate
execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function bubblevehicles:vehicles/van/set_properties