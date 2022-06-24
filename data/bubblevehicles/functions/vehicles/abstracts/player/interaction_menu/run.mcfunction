tag @e[type=marker] remove btemp.originC
execute at @s as @e[type=marker, tag=buvs.origin] if score @s buvs.registry = @e[type=llama, tag=buvs.seat, limit=1, sort=nearest] buvs.registry run tag @s add btemp.originC

execute store success score $Refuel bubblevehicles run clear @p #bubblevehicles:vehicle_buttons{Tags:["buvs.VEHICLE.refuel"]}
execute if score $Refuel bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/refuel

execute store success score $Lock bubblevehicles run clear @p #bubblevehicles:vehicle_buttons{Tags:["buvs.VEHICLE.lock"]}
execute if score $Lock bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/lock

execute store success score $Repair bubblevehicles run clear @p #bubblevehicles:vehicle_buttons{Tags:["buvs.VEHICLE.repair"]}
execute if score $Repair bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/repair

execute store success score $Paint bubblevehicles run clear @p #bubblevehicles:vehicle_buttons{Tags:["buvs.VEHICLE.paint"]}
execute if score $Paint bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/paint

execute store success score $Upgrade bubblevehicles run clear @p #bubblevehicles:vehicle_buttons{Tags:["buvs.VEHICLE.upgrade"]}
execute if score $Upgrade bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/upgrade

execute store success score $PickUp bubblevehicles run clear @p #bubblevehicles:vehicle_buttons{Tags:["buvs.VEHICLE.pickup"]}
execute if score $PickUp bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/pickup

execute store success score $Reset bubblevehicles run clear @p #bubblevehicles:vehicle_buttons{Tags:["buvs.VEHICLE.reset"]}
execute if score $Reset bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/reset

execute store success score $Scrap bubblevehicles run clear @p #bubblevehicles:vehicle_buttons{Tags:["buvs.VEHICLE.scrap"]}
execute if score $Scrap bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/scrap

execute store success score $Kick bubblevehicles run clear @p #bubblevehicles:vehicle_buttons{Tags:["buvs.VEHICLE.kick"]}
execute if score $Kick bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/kick

execute store success score $Kick bubblevehicles run clear @p #bubblevehicles:vehicle_buttons{Tags:["buvs.VEHICLE.none"]}
execute if score $Kick bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/none

kill @e[type=minecraft:item, nbt={Item:{tag:{VehicleAction:1b}}}]