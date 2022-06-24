function bubblevehicles:vehicles/abstracts/register
tag @e[type=minecraft:armor_stand] remove btemp.controller
tag @s add btemp.controller

execute at @e[type=minecraft:marker, tag=buvs.origin, limit=1, sort=nearest] run function bubblevehicles:vehicles/abstracts/controller/setup
function bubblevehicles:beat