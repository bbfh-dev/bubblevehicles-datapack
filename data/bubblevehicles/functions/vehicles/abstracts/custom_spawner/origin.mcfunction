execute store result score @s buvs.max_speed run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Max_Speed
execute store result score @s buvs.min_speed run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Min_Speed
execute store result score @s buvs.accelerate0 run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Accelerate0
execute store result score @s buvs.accelerate1 run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Accelerate1
execute store result score @s buvs.accelerate2 run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Accelerate2
execute store result score @s buvs.accelerate3 run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Accelerate3
execute store result score @s buvs.accelerate4 run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Accelerate4
execute store result score @s buvs.accelerate5 run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Accelerate5
execute store result score @s buvs.accelerate6 run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Accelerate6
execute store result score @s buvs.engine_type run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Engine_Type
execute store result score @s buvs.paint_type run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Paint_Type
execute store result score @s buvs.tank_cap run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Tank_Cap
execute store result score @s buvs.tank_mod run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Tank_Mod
execute store result score @s buvs.gears_count run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Gears_Count
execute store result score @s buvs.inventory run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Inventory
execute store result score @s buvs.health run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Health
execute store result score @s buvs.actions run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Actions
execute store result score @s bvdata.color1 run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Color1
execute store result score @s bvdata.color2 run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Color2
execute store result score @s bvdata.color3 run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Color3
execute store result score @s bvdata.digit0 run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Digit0
execute store result score @s bvdata.digit1 run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Digit1
execute store result score @s bvdata.digit2 run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Digit2
execute store result score @s bvdata.digit3 run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Digit3
data modify entity @s data.Items set from entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Items
data modify entity @s CustomName set from entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.CustomName
data modify entity @s data.VehicleTag set from entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Name
data modify entity @s Tags append from entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.Name
execute store result score $Locked bubblevehicles run data get entity @e[type=marker, tag=btemp.CUSTOM_SPAWNER, limit=1] data.isLocked
execute if score $Locked bubblevehicles matches 1 run tag @s add bvehicle.locked

function bubblevehicles:vehicles/abstracts/registry/generate
function bubblevehicles:vehicles/abstracts/origin/register