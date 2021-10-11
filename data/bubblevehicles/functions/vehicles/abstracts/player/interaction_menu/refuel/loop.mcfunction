scoreboard players remove $Limit bubblevehicles 1
scoreboard players add @e[type=marker, tag=btemp.originC, limit=1] bvehicle.fuel 6000
execute if score @e[type=marker, tag=btemp.originC, limit=1] bvehicle.fuel > @e[type=marker, tag=btemp.originC, limit=1] buvs.tank_cap run scoreboard players operation @e[type=marker, tag=btemp.originC, limit=1] bvehicle.fuel = @e[type=marker, tag=btemp.originC, limit=1] buvs.tank_cap
clear @p minecraft:blaze_powder 1

execute store result score $Amount bubblevehicles run clear @p minecraft:blaze_powder 0
execute if score @e[type=marker, tag=btemp.originC, limit=1] bvehicle.fuel = @e[type=marker, tag=btemp.originC, limit=1] buvs.tank_cap run function bubblevehicles:vehicles/abstracts/player/message/interaction/refuel/tank_is_full
execute unless score @e[type=marker, tag=btemp.originC, limit=1] bvehicle.fuel = @e[type=marker, tag=btemp.originC, limit=1] buvs.tank_cap if score $Amount bubblevehicles matches 1.. if score $Limit bubblevehicles matches 1.. run function bubblevehicles:vehicles/abstracts/player/interaction_menu/refuel/loop