function bubblevehicles:vehicles/abstracts/register
tag @e[type=marker] remove btemp.originC
execute as @e[type=marker, tag=buvs.origin] if score @s buvs.registry = @e[type=llama, limit=1, sort=nearest] buvs.registry run tag @s add btemp.originC
execute as @s[tag=!-buvs.passenger] run function bubblevehicles:vehicles/abstracts/seat/gui