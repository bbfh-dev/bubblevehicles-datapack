execute as @s[tag=-buvs.paintSolid] unless score @e[type=marker, tag=buvs.origin, limit=1, sort=nearest] bvdata.color1 matches 0 run function bubblevehicles:vehicles/abstracts/mesh/paint/solid
execute as @s[tag=-buvs.paintLeather] unless score @e[type=marker, tag=buvs.origin, limit=1, sort=nearest] bvdata.color1 matches 0 run function bubblevehicles:vehicles/abstracts/mesh/paint/leather
execute as @s[tag=-buvs.paintPattern] unless score @e[type=marker, tag=buvs.origin, limit=1, sort=nearest] bvdata.color2 matches 0 run function bubblevehicles:vehicles/abstracts/mesh/paint/pattern
execute as @s[tag=-buvs.paintDecorS] unless score @e[type=marker, tag=buvs.origin, limit=1, sort=nearest] bvdata.color3 matches 0 run function bubblevehicles:vehicles/abstracts/mesh/paint/decor_slab
execute as @s[tag=-buvs.paintDecorP] unless score @e[type=marker, tag=buvs.origin, limit=1, sort=nearest] bvdata.color3 matches 0 run function bubblevehicles:vehicles/abstracts/mesh/paint/decor_planks
execute as @s[tag=-buvs.lit] run function bubblevehicles:vehicles/abstracts/mesh/lit
function bubblevehicles:vehicles/abstracts/register