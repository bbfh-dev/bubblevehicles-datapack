execute as @e[type=armor_stand, tag=buvs.mesh, tag=buvs.AMBULANCE, tag=-buvs.id_40] if score @s buvs.registry = @p buvs.registry run function bubblevehicles:vehicles/ambulance/module/action_button/siren/instance/unlit_red
execute as @e[type=armor_stand, tag=buvs.mesh, tag=buvs.AMBULANCE, tag=-buvs.id_41] if score @s buvs.registry = @p buvs.registry run function bubblevehicles:vehicles/ambulance/module/action_button/siren/instance/lit_blue