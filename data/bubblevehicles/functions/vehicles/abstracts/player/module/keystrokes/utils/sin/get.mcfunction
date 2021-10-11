scoreboard players operation $KeyStrokes.Ang bubblevehicles = $KeyStrokes.Rot bubblevehicles
execute if score $KeyStrokes.Ang bubblevehicles matches 180000.. run scoreboard players remove $KeyStrokes.Ang bubblevehicles 180000
function bubblevehicles:vehicles/abstracts/player/module/keystrokes/utils/sin/sin
execute if score $KeyStrokes.Rot bubblevehicles matches 180000.. run scoreboard players operation $KeyStrokes.M1 bubblevehicles *= -1 buvs.const
scoreboard players operation $KeyStrokes.Sin bubblevehicles = $KeyStrokes.M1 bubblevehicles