scoreboard players add @s bvehicle.fuel 6000
execute if score @s bvehicle.fuel > @s buvs.TankCap run scoreboard players operation @s bvehicle.fuel = @s buvs.TankCap

playsound entity.player.levelup player @a ~ ~ ~ 1
execute at @s run particle wax_off ~ ~ ~ 1 1 1 0.1 10
kill @e[type=item, tag=buvs.blazeFuel]