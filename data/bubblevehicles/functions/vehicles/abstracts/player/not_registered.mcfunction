advancement revoke @s only bubblevehicles:event/not_registered
execute store result score @s bvdata.digit0 run data get entity @s UUID[0]
execute store result score @s bvdata.digit1 run data get entity @s UUID[1]
execute store result score @s bvdata.digit2 run data get entity @s UUID[2]
execute store result score @s bvdata.digit3 run data get entity @s UUID[3]
tellraw @s ["",{"text":"BubbleVehicles","bold":true,"color":"green"},{"text":" You have been registered","color":"#B6FFD8"},{"text":" ["},{"score":{"name":"@s","objective":"bvdata.digit0"}},{"text":", "},{"score":{"name":"@s","objective":"bvdata.digit1"}},{"text":", "},{"score":{"name":"@s","objective":"bvdata.digit2"}},{"text":", "},{"score":{"name":"@s","objective":"bvdata.digit3"}},{"text":"]"}]