execute if block ~ ~-.01 ~ #bubblevehicles:air run scoreboard players add $InFreeFall bubblevehicles 1
execute if score $Success bubblevehicles matches 0 run function bubblevehicles:vehicles/abstracts/controller/engine/simple_ground/ground_gravity/instance/passed
execute if score $InFreeFall bubblevehicles = $WheelsAmount bubblevehicles run data modify entity @s Motion[1] set value -1d