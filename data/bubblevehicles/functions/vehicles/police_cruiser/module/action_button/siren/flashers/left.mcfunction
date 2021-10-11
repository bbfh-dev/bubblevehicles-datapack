tag @s add +buvs.flashed
execute as @e[type=armor_stand, tag=buvs.mesh, tag=buvs.POLICE_CRUISER, tag=-buvs.headLights] if score @s buvs.registry = @p buvs.registry run function bubblevehicles:vehicles/police_cruiser/module/action_button/siren/instance/flashers/left
execute unless score @s bvehicle.brake matches -10..10 run function bubblevehicles:vehicles/police_cruiser/module/action_button/siren/flashers/left_rear
scoreboard players set $Success bubblevehicles 1