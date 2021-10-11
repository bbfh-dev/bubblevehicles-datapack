scoreboard players operation @p buvs.registry = @s buvs.registry
tag @e[type=marker] remove btemp.originA
execute as @e[type=marker, tag=buvs.origin] if score @s buvs.registry = @p buvs.registry run tag @s add btemp.originA

execute if score @e[type=marker, tag=btemp.originA, limit=1] bvdata.digit0 matches -2147483648..2147483647 run function bubblevehicles:vehicles/abstracts/player/started_riding/seat/execute
execute unless score @e[type=marker, tag=btemp.originA, limit=1] bvdata.digit0 matches -2147483648..2147483647 run function bubblevehicles:vehicles/abstracts/player/started_riding/seat/not_owned