scoreboard players set $KeyStrokes.M1 bubblevehicles 324000000
scoreboard players set $KeyStrokes.M2 bubblevehicles 40
scoreboard players operation $KeyStrokes.M2 bubblevehicles *= $KeyStrokes.Ang bubblevehicles
scoreboard players operation $KeyStrokes.M2 bubblevehicles /= 1000 buvs.const
scoreboard players operation $KeyStrokes.M2 bubblevehicles *= $KeyStrokes.Ang bubblevehicles
scoreboard players operation $KeyStrokes.M1 bubblevehicles -= $KeyStrokes.M2 bubblevehicles
scoreboard players operation $KeyStrokes.M2 bubblevehicles = $KeyStrokes.Ang bubblevehicles
scoreboard players operation $KeyStrokes.M2 bubblevehicles /= 1000 buvs.const
scoreboard players operation $KeyStrokes.M2 bubblevehicles *= $KeyStrokes.Ang bubblevehicles
scoreboard players add $KeyStrokes.M2 bubblevehicles 32400000
scoreboard players operation $KeyStrokes.M2 bubblevehicles /= 1000 buvs.const
scoreboard players operation $KeyStrokes.M1 bubblevehicles /= $KeyStrokes.M2 bubblevehicles