scoreboard players set $GotUp bubblevehicles 0
execute unless block ~ ~ ~ #bubblevehicles:air if block ~ ~0.1 ~ #bubblevehicles:air run data modify entity @s Motion[1] set value 0.1d
execute if block ~ ~.4 ~ #minecraft:slabs run data modify entity @s Motion[1] set value 0.5d
execute unless block ~ ~.4 ~ #minecraft:slabs unless block ~ ~.4 ~ #bubblevehicles:air run data modify entity @s Motion[1] set value 1d
scoreboard players set $Success bubblevehicles 1