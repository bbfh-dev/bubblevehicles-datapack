execute as @e[type=armor_stand, tag=buvs.mesh, tag=buvs.AMBULANCE, tag=-buvs.id_40] if score @s buvs.registry = @p buvs.registry run function bubblevehicles:vehicles/ambulance/module/action_button/siren/instance/unlit_red
execute as @e[type=armor_stand, tag=buvs.mesh, tag=buvs.AMBULANCE, tag=-buvs.id_41] if score @s buvs.registry = @p buvs.registry run function bubblevehicles:vehicles/ambulance/module/action_button/siren/instance/unlit_blue
execute as @e[type=armor_stand, tag=buvs.mesh, tag=buvs.AMBULANCE, tag=-buvs.headLights] if score @s buvs.registry = @p buvs.registry run function bubblevehicles:vehicles/ambulance/module/action_button/siren/instance/flashers/off
execute as @e[type=armor_stand, tag=buvs.mesh, tag=buvs.AMBULANCE, tag=-buvs.id_43] if score @s buvs.registry = @p buvs.registry run function bubblevehicles:vehicles/ambulance/module/action_button/siren/instance/flashers/rear/off
execute as @e[type=armor_stand, tag=buvs.mesh, tag=buvs.AMBULANCE, tag=-buvs.id_44] if score @s buvs.registry = @p buvs.registry run function bubblevehicles:vehicles/ambulance/module/action_button/siren/instance/flashers/rear/off