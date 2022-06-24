execute store result score $SeatID0 bubblevehicles run data get entity @s UUID[0]
execute store result score $SeatID1 bubblevehicles run data get entity @s UUID[1]
execute store result score $SeatID2 bubblevehicles run data get entity @s UUID[2]
execute store result score $SeatID3 bubblevehicles run data get entity @s UUID[3]
execute if score $SeatID0 bubblevehicles = $PlayerID0 bubblevehicles if score $SeatID1 bubblevehicles = $PlayerID1 bubblevehicles if score $SeatID2 bubblevehicles = $PlayerID2 bubblevehicles if score $SeatID3 bubblevehicles = $PlayerID3 bubblevehicles run function bubblevehicles:vehicles/abstracts/player/started_riding/seat/instance