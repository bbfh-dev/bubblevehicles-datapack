advancement revoke @s only bubblevehicles:event/stopped_riding

execute as @s[tag=!buvs.driver] as @e[type=llama, tag=buvs.seat] if score @s buvs.registry = @p buvs.registry run data merge entity @s {Age:0}
execute as @s[tag=buvs.driver] run function bubblevehicles:vehicles/abstracts/player/stopped_riding/driver
scoreboard players reset @s buvs.registry
team leave @s[team=bubblevehicles]