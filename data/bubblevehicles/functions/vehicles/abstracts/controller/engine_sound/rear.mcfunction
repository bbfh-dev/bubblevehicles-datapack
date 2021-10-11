scoreboard players set @s bvehicle.sound 6
execute if score @s bvehicle.speed matches -100..-1 run playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.8
execute if score @s bvehicle.speed matches -200..-101 run playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.85
execute if score @s bvehicle.speed matches -300..-201 run playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.9
execute if score @s bvehicle.speed matches -400..-301 run playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 0.95
execute if score @s bvehicle.speed matches -500..-401 run playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 1
execute if score @s bvehicle.speed matches -600..-501 run playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 1.05
execute if score @s bvehicle.speed matches ..-601 run playsound entity.bat.takeoff neutral @a ~ ~ ~ 1 1.1