execute store result score $Player0 bubblevehicles run data get entity @p RootVehicle.Entity.UUID[0]
execute store result score $Player1 bubblevehicles run data get entity @p RootVehicle.Entity.UUID[1]
execute store result score $Player2 bubblevehicles run data get entity @p RootVehicle.Entity.UUID[2]
execute store result score $Player3 bubblevehicles run data get entity @p RootVehicle.Entity.UUID[3]
execute if score $Seat0 bubblevehicles = $Player0 bubblevehicles if score $Seat1 bubblevehicles = $Player1 bubblevehicles if score $Seat2 bubblevehicles = $Player2 bubblevehicles if score $Seat3 bubblevehicles = $Player3 bubblevehicles as @p run tp @s ~ ~ ~ ~ ~