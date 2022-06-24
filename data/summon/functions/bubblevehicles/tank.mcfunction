summon minecraft:marker ~ ~ ~ {Tags:["buvs.TANK", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.TANK"}, CustomName:'"Tank"'}

function bubblevehicles:vehicles/abstracts/registry/generate
execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function bubblevehicles:vehicles/tank/set_properties