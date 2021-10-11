advancement revoke @s only bubblevehicles:event/started_riding
team join bubblevehicles @s


#  Execute seat
execute store result score $PlayerID0 bubblevehicles run data get entity @s RootVehicle.Entity.UUID[0]
execute store result score $PlayerID1 bubblevehicles run data get entity @s RootVehicle.Entity.UUID[1]
execute store result score $PlayerID2 bubblevehicles run data get entity @s RootVehicle.Entity.UUID[2]
execute store result score $PlayerID3 bubblevehicles run data get entity @s RootVehicle.Entity.UUID[3]
execute as @e[type=minecraft:llama, tag=buvs.seat] run function bubblevehicles:vehicles/abstracts/player/started_riding/seat/conditions