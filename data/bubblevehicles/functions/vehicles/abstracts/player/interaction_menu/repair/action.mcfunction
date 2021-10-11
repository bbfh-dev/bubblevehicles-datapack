scoreboard players set $Limit bubblevehicles 64
function bubblevehicles:vehicles/abstracts/player/interaction_menu/repair/loop
playsound entity.player.levelup player @a ~ ~ ~ 1
execute at @s run particle wax_off ~ ~ ~ 1 1 1 0.1 10