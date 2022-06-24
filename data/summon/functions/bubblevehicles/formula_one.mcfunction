summon minecraft:marker ~ ~ ~ {Tags:["buvs.FORMULA_ONE", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.FORMULA_ONE"}, CustomName:'"Formula One"'}

function bubblevehicles:vehicles/abstracts/registry/generate
execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function bubblevehicles:vehicles/formula_one/set_properties