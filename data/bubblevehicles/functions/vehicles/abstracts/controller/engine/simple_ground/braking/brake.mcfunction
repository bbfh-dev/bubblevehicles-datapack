scoreboard players remove @s[scores={bvehicle.speed=100..}] bvehicle.speed 100
scoreboard players remove @s[scores={bvehicle.speed=10..99}] bvehicle.speed 10
scoreboard players remove @s[scores={bvehicle.speed=1..9}] bvehicle.speed 1

execute unless score @s bvehicle.brake matches 1 as @e[type=armor_stand, tag=buvs.mesh, tag=-buvs.rearLights] if score @s buvs.registry = @e[type=armor_stand, tag=btemp.controller, limit=1] buvs.registry run data modify entity @s ArmorItems[3].tag.SkullOwner set value {Id:[I;729474635,-249577334,-1012541941,-182515055],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGUyYzE4YWIzNTk0OWJmOWY5ZTdkNmE2OWI4ODVjY2Q4Y2MyZWZiOTQ3NTk0NmQ3ZDNmYjVjM2ZlZjYxIn19fQ=="}]}}
scoreboard players set @s bvehicle.brake 1