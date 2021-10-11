scoreboard players operation @s bvehicle.health -= $Strength bubblevehicles
execute at @s run particle spit ~ ~1 ~ 0.1 0.1 0.1 0.2 10
title @p actionbar ["Damaged ", {"score":{"objective":"bubblevehicles","name":"$Strength"}}, " (", {"score":{"objective":"bvehicle.health","name":"@s"}}, "HP remaining)"]