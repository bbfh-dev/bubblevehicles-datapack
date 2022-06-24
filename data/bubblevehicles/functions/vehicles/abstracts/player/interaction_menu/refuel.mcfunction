function bubblevehicles:vehicles/abstracts/seat/gui
data modify entity @s Items[0].tag.Enchantments set value [{}]
scoreboard players set @s bubblevehicles 1

execute store result score $Amount bubblevehicles run clear @p minecraft:blaze_powder 0
execute if score @e[type=marker, tag=btemp.originC, limit=1] bvehicle.fuel = @e[type=marker, tag=btemp.originC, limit=1] buvs.TankCap run function bubblevehicles:vehicles/abstracts/player/message/interaction/refuel/tank_is_full
execute unless score @e[type=marker, tag=btemp.originC, limit=1] bvehicle.fuel = @e[type=marker, tag=btemp.originC, limit=1] buvs.TankCap if score $Amount bubblevehicles matches 0 run function bubblevehicles:vehicles/abstracts/player/message/interaction/refuel/no_fuel
execute unless score @e[type=marker, tag=btemp.originC, limit=1] bvehicle.fuel = @e[type=marker, tag=btemp.originC, limit=1] buvs.TankCap if score $Amount bubblevehicles matches 1.. run function bubblevehicles:vehicles/abstracts/player/interaction_menu/refuel/action