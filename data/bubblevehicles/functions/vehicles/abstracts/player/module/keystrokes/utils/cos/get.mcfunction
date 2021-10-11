scoreboard players operation $KeyStrokes.Ang bubblevehicles = $KeyStrokes.Rot bubblevehicles
execute if score $KeyStrokes.Rot bubblevehicles matches 180000.. run scoreboard players remove $KeyStrokes.Ang bubblevehicles 180000
execute if score $KeyStrokes.Ang bubblevehicles matches ..90000 run function bubblevehicles:vehicles/abstracts/player/module/keystrokes/utils/cos/cos

scoreboard players set $KeyStrokes.90 bubblevehicles 0
execute if score $KeyStrokes.Ang bubblevehicles matches 90000.. run scoreboard players set $KeyStrokes.90 bubblevehicles 1
execute if score $KeyStrokes.90 bubblevehicles matches 1 run scoreboard players remove $KeyStrokes.Ang bubblevehicles 90000
execute if score $KeyStrokes.90 bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/module/keystrokes/utils/sin/sin

scoreboard players operation $KeyStrokes.Cos bubblevehicles = $KeyStrokes.M1 bubblevehicles
execute if score $KeyStrokes.Rot bubblevehicles matches 90000.. if score $KeyStrokes.Rot bubblevehicles matches ..270000 run scoreboard players operation $KeyStrokes.Cos bubblevehicles *= -1 buvs.const