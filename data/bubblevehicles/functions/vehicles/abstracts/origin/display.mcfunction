scoreboard players add @s bubblevehicles 1
execute if score @s bubblevehicles matches 10.. run function bubblevehicles:vehicles/abstracts/origin/display/previous
tp @s ~ ~ ~ ~ ~
execute if score @s bubblevehicles matches 10.. run function bubblevehicles:vehicles/abstracts/origin/display/current