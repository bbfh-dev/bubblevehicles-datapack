execute store result score $Fuel.Current bubblevehicles run data get entity @e[type=llama, tag=btemp.seat, limit=1] Health
scoreboard players operation $Fuel.Value bubblevehicles = @e[type=marker, tag=btemp.origin, limit=1] bvehicle.fuel
scoreboard players operation $Fuel.Value bubblevehicles /= @e[type=marker, tag=btemp.origin, limit=1] buvs.tank_mod
scoreboard players add $Fuel.Value bubblevehicles 1
execute unless score $Fuel.Value bubblevehicles matches ..0 unless score $Fuel.Current bubblevehicles = $Fuel.Value bubblevehicles store result entity @e[type=llama, tag=btemp.seat, limit=1] Health float 1 run scoreboard players get $Fuel.Value bubblevehicles