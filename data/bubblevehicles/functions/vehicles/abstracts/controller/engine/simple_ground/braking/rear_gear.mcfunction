execute as @e[type=armor_stand, tag=buvs.mesh, tag=-buvs.rearLights] if score @s buvs.registry = @e[type=armor_stand, tag=btemp.controller, limit=1] buvs.registry run data modify entity @s ArmorItems[3].tag.SkullOwner set value {Id:[I;-1859547293,-1742451706,-1604127783,-95311396],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmRmMTRlNTAxN2IyNzliMDNkYWM5N2Q0MjliNGE1ZmE2YzM5OGFkNTY4ZWE0M2U3YzQwNjgzYzczOThjMTYyNyJ9fX0="}]}}
scoreboard players set @s bvehicle.brake -1