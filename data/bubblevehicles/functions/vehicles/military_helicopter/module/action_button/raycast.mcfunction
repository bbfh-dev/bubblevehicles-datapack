summon marker ~ ~ ~ {Tags:["buvs.ray", "buvs.notset"]}
scoreboard players set $RaycastLimit bubblevehicles 128
execute as @e[type=marker, tag=buvs.ray, tag=buvs.notset] positioned ~ ~-.625 ~ rotated as @p[tag=btemp.driver] positioned ^ ^ ^1 run function bubblevehicles:vehicles/military_helicopter/module/action_button/raycast_loop