advancement revoke @s only bubblevehicles:event/player_tick
execute if score $RenderDistance buvs.settings matches 1..4 run function bubblevehicles:vehicles/abstracts/player/tick/low
execute if score $RenderDistance buvs.settings matches 5..8 run function bubblevehicles:vehicles/abstracts/player/tick/high
scoreboard players set $Debug bubblevehicles 0