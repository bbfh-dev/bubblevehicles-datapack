scoreboard players set @s bvehicle.sound 6
execute if score @s bvehicle.speed matches 1..100 run playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.8
execute if score @s bvehicle.speed matches 101..200 run playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.85
execute if score @s bvehicle.speed matches 201..300 run playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.9
execute if score @s bvehicle.speed matches 301..400 run playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.95
execute if score @s bvehicle.speed matches 401..440 run playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 1