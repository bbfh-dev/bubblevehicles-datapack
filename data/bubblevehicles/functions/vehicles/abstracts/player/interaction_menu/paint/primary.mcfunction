function bubblevehicles:vehicles/abstracts/player/interaction_menu/paint/readhand/solid
function bubblevehicles:vehicles/abstracts/player/interaction_menu/paint/readhand/pattern
function bubblevehicles:vehicles/abstracts/player/interaction_menu/paint/readhand/decor

execute if score $SolidMaterial bubblevehicles matches 0 if score $PatternMaterial bubblevehicles matches 0 if score $DecorMaterial bubblevehicles matches 0 run function bubblevehicles:vehicles/abstracts/player/message/interaction/paint/no_block
execute if score $SolidMaterial bubblevehicles matches 1.. run scoreboard players operation @e[type=marker, tag=btemp.originC, limit=1] bvdata.color1 = $SolidMaterial bubblevehicles
execute if score $SolidMaterial bubblevehicles matches 1.. as @e[type=marker, tag=btemp.originC, limit=1] at @s run function bubblevehicles:vehicles/abstracts/origin/unload
execute if score $PatternMaterial bubblevehicles matches 1.. run scoreboard players operation @e[type=marker, tag=btemp.originC, limit=1] bvdata.color2 = $PatternMaterial bubblevehicles
execute if score $PatternMaterial bubblevehicles matches 1.. as @e[type=marker, tag=btemp.originC, limit=1] at @s run function bubblevehicles:vehicles/abstracts/origin/unload
execute if score $DecorMaterial bubblevehicles matches 1.. run scoreboard players operation @e[type=marker, tag=btemp.originC, limit=1] bvdata.color3 = $DecorMaterial bubblevehicles
execute if score $DecorMaterial bubblevehicles matches 1.. as @e[type=marker, tag=btemp.originC, limit=1] at @s run function bubblevehicles:vehicles/abstracts/origin/unload