execute store result score $X bubblevehicles run data get entity @s Pos[0] 1000
execute store result score $Z bubblevehicles run data get entity @s Pos[2] 1000
scoreboard players set $Temp bubblevehicles 0
execute if score $X bubblevehicles matches 2147483647 run scoreboard players set $Temp bubblevehicles 1
execute if score $Z bubblevehicles matches 2147483647 run scoreboard players set $Temp bubblevehicles 1
execute if score $Temp bubblevehicles matches 0 run function bubblevehicles:vehicles/abstracts/controller/apply_vector_force/scoreboard
execute if score $Temp bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/controller/apply_vector_force/data