tag @s add buvs.filter
execute as @p if predicate bubblevehicles:player/event/looking_at_seat as @e[type=llama, tag=buvs.seat, tag=!-buvs.passenger] if score @s buvs.registry = @e[tag=buvs.papermc, tag=buvs.filter, limit=1] buvs.registry run function bubblevehicles:vehicles/abstracts/player/interaction_menu/run
tag @s remove buvs.filter