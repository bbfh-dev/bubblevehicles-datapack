tag @s remove buvs.notset
tag @e[type=llama, tag=buvs.seat, tag=!-buvs.passenger] remove btemp.seatC
execute as @e[type=llama, tag=buvs.seat, tag=!-buvs.passenger] if score @s buvs.registry = @e[type=marker, tag=btemp.originC, limit=1] buvs.registry run tag @s add btemp.seatC
data modify entity @s Item.tag.EntityTag.data.Name set from entity @e[type=marker, tag=btemp.originC, limit=1] data.VehicleTag
data modify entity @s Item.tag.display.Name set from entity @e[type=marker, tag=btemp.originC, limit=1] CustomName
data modify entity @s Item.tag.EntityTag.data.CustomName set from entity @e[type=marker, tag=btemp.originC, limit=1] CustomName
data modify entity @s Item.tag.EntityTag.data.Items set from entity @e[type=marker, tag=btemp.seatC, limit=1] Items
execute store result entity @s Item.tag.EntityTag.data.isLocked byte 1 run tag @e[type=marker, tag=btemp.originC, limit=1] remove bvehicle.locked
execute store result entity @s Item.tag.EntityTag.data.Max_Speed int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.max_speed
execute store result entity @s Item.tag.EntityTag.data.Min_Speed int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.min_speed
execute store result entity @s Item.tag.EntityTag.data.Accelerate0 int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.accelerate0
execute store result entity @s Item.tag.EntityTag.data.Accelerate1 int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.accelerate1
execute store result entity @s Item.tag.EntityTag.data.Accelerate2 int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.accelerate2
execute store result entity @s Item.tag.EntityTag.data.Accelerate3 int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.accelerate3
execute store result entity @s Item.tag.EntityTag.data.Accelerate4 int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.accelerate4
execute store result entity @s Item.tag.EntityTag.data.Accelerate5 int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.accelerate5
execute store result entity @s Item.tag.EntityTag.data.Accelerate6 int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.accelerate6
execute store result entity @s Item.tag.EntityTag.data.Engine_Type int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.engine_type
execute store result entity @s Item.tag.EntityTag.data.Paint_Type int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.paint_type
execute store result entity @s Item.tag.EntityTag.data.Tank_Cap int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.tank_cap
execute store result entity @s Item.tag.EntityTag.data.Tank_Mod int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.tank_mod
execute store result entity @s Item.tag.EntityTag.data.Gears_Count int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.gears_count
execute store result entity @s Item.tag.EntityTag.data.Inventory int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.inventory
execute store result entity @s Item.tag.EntityTag.data.Health int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.health
execute store result entity @s Item.tag.EntityTag.data.Actions int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] buvs.actions
execute store result entity @s Item.tag.EntityTag.data.Color1 int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] bvdata.color1
execute store result entity @s Item.tag.EntityTag.data.Color2 int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] bvdata.color2
execute store result entity @s Item.tag.EntityTag.data.Color3 int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] bvdata.color3
execute store result entity @s Item.tag.EntityTag.data.Digit0 int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] bvdata.digit0
execute store result entity @s Item.tag.EntityTag.data.Digit1 int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] bvdata.digit1
execute store result entity @s Item.tag.EntityTag.data.Digit2 int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] bvdata.digit2
execute store result entity @s Item.tag.EntityTag.data.Digit3 int 1 run scoreboard players get @e[type=marker, tag=btemp.originC, limit=1] bvdata.digit3
