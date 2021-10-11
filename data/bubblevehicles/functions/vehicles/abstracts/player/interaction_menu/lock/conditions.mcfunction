function bubblevehicles:vehicles/abstracts/player/is_owner
execute if score $Owned bubblevehicles matches 0 run function bubblevehicles:vehicles/abstracts/player/message/interaction/lock/not_owned
execute if score $Owned bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/lock/handler