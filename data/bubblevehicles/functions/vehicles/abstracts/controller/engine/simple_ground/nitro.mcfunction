execute if score @p buvsInput.value matches 1 run tag @p add -buvs.inputBegin
execute if score @p buvsInput.value matches 0 as @p if entity @s[tag=-buvs.inputBegin] run tag @p add -buvs.inputEnd
execute if score @p buvsInput.value matches 1 as @p if entity @s[tag=-buvs.inputEnd] run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/nitro_begin
scoreboard players remove @p buvs.accelerate1 1
execute if score @p buvs.accelerate1 matches ..0 run scoreboard players set @p buvs.accelerate0 0
execute if score @p buvs.accelerate1 matches ..0 run scoreboard players set @p buvs.accelerate1 20
execute if score @p buvs.accelerate0 matches 3.. run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/nitro_pass

execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.upgrade3 matches ..0 run tag @e[type=marker, tag=btemp.origin, limit=1] remove -buvs.nitro_boost