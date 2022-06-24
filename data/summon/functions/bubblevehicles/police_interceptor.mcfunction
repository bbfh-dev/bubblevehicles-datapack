summon minecraft:marker ~ ~ ~ {Tags:["buvs.POLICE_INTERCEPTOR", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.POLICE_INTERCEPTOR"}, CustomName:'"Police Interceptor"'}

function bubblevehicles:vehicles/abstracts/registry/generate
execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function bubblevehicles:vehicles/police_interceptor/set_properties