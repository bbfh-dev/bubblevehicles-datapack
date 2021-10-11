execute unless score @p buvsInput.value matches 0 run function bubblevehicles:vehicles/abstracts/controller/steering/left
execute if score @p buvsInput.value matches 0 run function bubblevehicles:vehicles/abstracts/controller/steering/slow_left
execute as @e[type=armor_stand, tag=buvs.mesh, tag=-buvs.frontWheel] if score @s buvs.registry = @p buvs.registry at @s run tp @s ~ ~ ~ ~-35 ~