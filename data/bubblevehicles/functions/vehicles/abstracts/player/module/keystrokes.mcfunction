execute store result score $KeyStrokes.X2 bubblevehicles run data get entity @s Motion[0] 12000
execute store result score $KeyStrokes.Z2 bubblevehicles run data get entity @s Motion[2] 12000


#  Value 1
execute store result score $KeyStrokes.Rot bubblevehicles run data get entity @s Rotation[0] 1000
execute if score $KeyStrokes.Rot bubblevehicles matches ..0 run scoreboard players add $KeyStrokes.Rot bubblevehicles 360000

function bubblevehicles:vehicles/abstracts/player/module/keystrokes/utils/cos/get
function bubblevehicles:vehicles/abstracts/player/module/keystrokes/utils/sin/get
scoreboard players operation $KeyStrokes.X bubblevehicles = $KeyStrokes.Sin bubblevehicles
scoreboard players operation $KeyStrokes.X bubblevehicles /= -100 buvs.const
scoreboard players operation $KeyStrokes.Z bubblevehicles = $KeyStrokes.Cos bubblevehicles
scoreboard players operation $KeyStrokes.Z bubblevehicles /= 100 buvs.const
scoreboard players operation $KeyStrokes.X bubblevehicles *= $KeyStrokes.X2 bubblevehicles
scoreboard players operation $KeyStrokes.Z bubblevehicles *= $KeyStrokes.Z2 bubblevehicles

scoreboard players operation $KeyStrokes.V_1 bubblevehicles = $KeyStrokes.X bubblevehicles
scoreboard players operation $KeyStrokes.V_1 bubblevehicles += $KeyStrokes.Z bubblevehicles


#  Value 2
scoreboard players remove $KeyStrokes.Rot bubblevehicles 90000
execute if score $KeyStrokes.Rot bubblevehicles matches ..0 run scoreboard players add $KeyStrokes.Rot bubblevehicles 360000

function bubblevehicles:vehicles/abstracts/player/module/keystrokes/utils/cos/get
function bubblevehicles:vehicles/abstracts/player/module/keystrokes/utils/sin/get
scoreboard players operation $KeyStrokes.X bubblevehicles = $KeyStrokes.Sin bubblevehicles
scoreboard players operation $KeyStrokes.X bubblevehicles /= -100 buvs.const
scoreboard players operation $KeyStrokes.Z bubblevehicles = $KeyStrokes.Cos bubblevehicles
scoreboard players operation $KeyStrokes.Z bubblevehicles /= 100 buvs.const
scoreboard players operation $KeyStrokes.X bubblevehicles *= $KeyStrokes.X2 bubblevehicles
scoreboard players operation $KeyStrokes.Z bubblevehicles *= $KeyStrokes.Z2 bubblevehicles

scoreboard players operation $KeyStrokes.V_2 bubblevehicles = $KeyStrokes.X bubblevehicles
scoreboard players operation $KeyStrokes.V_2 bubblevehicles += $KeyStrokes.Z bubblevehicles


#  Output
scoreboard players set @s buvsInput.value 0
scoreboard players set @s buvsInput.angle 0

execute if score $KeyStrokes.V_1 bubblevehicles matches ..-12000 if score $KeyStrokes.V_2 bubblevehicles matches 12000.. run function bubblevehicles:vehicles/abstracts/player/module/keystrokes/backwards_left
execute if score $KeyStrokes.V_1 bubblevehicles matches ..-16000 if score $KeyStrokes.V_2 bubblevehicles matches -12000.. run scoreboard players set @s buvsInput.value -1
execute if score $KeyStrokes.V_1 bubblevehicles matches ..-12000 if score $KeyStrokes.V_2 bubblevehicles matches ..-12000 run function bubblevehicles:vehicles/abstracts/player/module/keystrokes/backwards_right

execute if score $KeyStrokes.V_1 bubblevehicles matches 12000.. if score $KeyStrokes.V_2 bubblevehicles matches 12000.. run function bubblevehicles:vehicles/abstracts/player/module/keystrokes/forward_left
execute if score $KeyStrokes.V_1 bubblevehicles matches 16000.. if score $KeyStrokes.V_2 bubblevehicles matches -12000.. run scoreboard players set @s buvsInput.value 1
execute if score $KeyStrokes.V_1 bubblevehicles matches 12000.. if score $KeyStrokes.V_2 bubblevehicles matches ..-12000 run function bubblevehicles:vehicles/abstracts/player/module/keystrokes/forward_right

execute if score $KeyStrokes.V_1 bubblevehicles matches -1000..1000 if score $KeyStrokes.V_2 bubblevehicles matches 16000.. run scoreboard players set @s buvsInput.angle -1
execute if score $KeyStrokes.V_1 bubblevehicles matches -1000..1000 if score $KeyStrokes.V_2 bubblevehicles matches ..-16000 run scoreboard players set @s buvsInput.angle 1
