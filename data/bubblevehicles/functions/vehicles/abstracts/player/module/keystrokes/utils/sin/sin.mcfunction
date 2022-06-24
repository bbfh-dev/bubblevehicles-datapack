scoreboard players set $KeyStrokes.M1 bubblevehicles 180000
scoreboard players operation $KeyStrokes.M1 bubblevehicles -= $KeyStrokes.Ang bubblevehicles
scoreboard players operation $KeyStrokes.M1 bubblevehicles /= 100 buvs.const
scoreboard players operation $KeyStrokes.M1 bubblevehicles *= $KeyStrokes.Ang bubblevehicles
scoreboard players operation $KeyStrokes.M1 bubblevehicles *= 4 buvs.const
scoreboard players set $KeyStrokes.M2 bubblevehicles 180000
scoreboard players set $KeyStrokes.M3 bubblevehicles 40500000
scoreboard players operation $KeyStrokes.M2 bubblevehicles -= $KeyStrokes.Ang bubblevehicles
scoreboard players operation $KeyStrokes.M2 bubblevehicles /= 1000 buvs.const
scoreboard players operation $KeyStrokes.M2 bubblevehicles *= $KeyStrokes.Ang bubblevehicles
scoreboard players operation $KeyStrokes.M3 bubblevehicles -= $KeyStrokes.M2 bubblevehicles
scoreboard players operation $KeyStrokes.M3 bubblevehicles /= 1000 buvs.const
scoreboard players operation $KeyStrokes.M1 bubblevehicles /= $KeyStrokes.M3 bubblevehicles