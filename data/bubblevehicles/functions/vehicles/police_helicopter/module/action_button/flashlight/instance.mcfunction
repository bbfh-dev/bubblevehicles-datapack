scoreboard players set $Limit bubblevehicles 64
execute positioned ~ ~ ~ rotated ~ ~ run function bubblevehicles:vehicles/police_helicopter/module/action_button/flashlight/instance/raycast_loop
execute as @s[tag=!btemp.lighted] as @e[type=marker, tag=buvs.light] if score @s buvs.registry = @p[tag=btemp.playerV] buvs.registry at @s run function bubblevehicles:vehicles/abstracts/light/kill
tag @s remove btemp.lighted
tp @s ~ ~ ~ ~ ~