execute as @e[type=minecraft:marker, tag=!buvs.passed, tag=buvs.rendered] at @s run function bubblevehicles:vehicles/abstracts/origin/unload
execute as @e[type=minecraft:marker, tag=buvs.passed, tag=!buvs.rendered] at @s run function bubblevehicles:vehicles/abstracts/origin/render
execute if score $RenderDistance buvs.settings matches 1..4 run function bubblevehicles:vehicles/abstracts/origin/tick/low
execute if score $RenderDistance buvs.settings matches 5..8 run function bubblevehicles:vehicles/abstracts/origin/tick/high

scoreboard objectives add bubblevehicles dummy "BubbleVehicles"
scoreboard players set $Debug bubblevehicles 1