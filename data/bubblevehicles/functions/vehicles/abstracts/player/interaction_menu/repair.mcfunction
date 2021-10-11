function bubblevehicles:vehicles/abstracts/seat/gui
data modify entity @s Items[2].tag.Enchantments set value [{}]
scoreboard players set @s bubblevehicles 2

execute store result score $Amount bubblevehicles run clear @p #bubblevehicles:repair_materials 0
execute if score @e[type=marker, tag=btemp.originC, limit=1] bvehicle.health = @e[type=marker, tag=btemp.originC, limit=1] buvs.health run function bubblevehicles:vehicles/abstracts/player/message/interaction/repair/vehicle_is_repaired
execute unless score @e[type=marker, tag=btemp.originC, limit=1] bvehicle.health = @e[type=marker, tag=btemp.originC, limit=1] buvs.health if score $Amount bubblevehicles matches 0 run function bubblevehicles:vehicles/abstracts/player/message/interaction/repair/no_copper
execute unless score @e[type=marker, tag=btemp.originC, limit=1] bvehicle.health = @e[type=marker, tag=btemp.originC, limit=1] buvs.health if score $Amount bubblevehicles matches 1.. run function bubblevehicles:vehicles/abstracts/player/interaction_menu/repair/action