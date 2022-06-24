execute at @s run particle minecraft:soul_fire_flame ^ ^.5 ^-1.6 0.1 0.1 0.1 0.01 10
scoreboard players add @s bvehicle.speed 800
scoreboard players set @p buvs.accelerate0 0
scoreboard players set @p buvs.accelerate1 0
playsound minecraft:entity.firework_rocket.twinkle block @a ~ ~ ~ 1
scoreboard players remove @e[type=marker, tag=btemp.origin, limit=1] bvdata.upgrade3 1