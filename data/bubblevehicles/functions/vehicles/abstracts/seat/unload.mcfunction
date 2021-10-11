scoreboard players reset @s buvs.registry

# execute store result score $Seat0 bubblevehicles run data get entity @s UUID[0]
# execute store result score $Seat1 bubblevehicles run data get entity @s UUID[1]
# execute store result score $Seat2 bubblevehicles run data get entity @s UUID[2]
# execute store result score $Seat3 bubblevehicles run data get entity @s UUID[3]
# execute at @a run function bubblevehicles:vehicle/abstract/player/mark_driver

tp @s ~ -256 ~
kill @s