summon minecraft:marker ~ ~ ~ {Tags:["buvs.DRILL", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.DRILL"}, CustomName:'"Drill"'}

function bubblevehicles:vehicles/abstracts/registry/generate
execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function bubblevehicles:vehicles/drill/set_properties