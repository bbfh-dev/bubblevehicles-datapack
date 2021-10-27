execute if entity @p[nbt={SelectedItem:{tag:{display:{Name:'[{"text":"Upgrade ", "color":"gold", "italic":false, "bold":true}, {"text":"Nitro Boost", "bold":false}]'}}}}] run scoreboard players set $Item bubblevehicles 0
execute if entity @p[nbt={SelectedItem:{tag:{display:{Name:'[{"text":"Upgrade ", "color":"gold", "italic":false, "bold":true}, {"text":"Engine", "bold":false}]'}}}}] run scoreboard players set $Item bubblevehicles 1
execute if entity @p[nbt={SelectedItem:{tag:{display:{Name:'[{"text":"Upgrade ", "color":"gold", "italic":false, "bold":true}, {"text":"Transmission", "bold":false}]'}}}}] run scoreboard players set $Item bubblevehicles 2
execute if entity @p[nbt={SelectedItem:{tag:{display:{Name:'[{"text":"Upgrade ", "color":"gold", "italic":false, "bold":true}, {"text":"Glove Box", "bold":false}]'}}}}] run scoreboard players set $Item bubblevehicles 3
execute if entity @p[nbt={SelectedItem:{tag:{display:{Name:'[{"text":"Upgrade ", "color":"gold", "italic":false, "bold":true}, {"text":"Gas Tank", "bold":false}]'}}}}] run scoreboard players set $Item bubblevehicles 4
scoreboard players set $Applied bubblevehicles 0
execute if score $Item bubblevehicles matches 0 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/upgrade/nitro_boost
execute if score $Item bubblevehicles matches 1 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/upgrade/engine
execute if score $Item bubblevehicles matches 2 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/upgrade/transmission
execute if score $Item bubblevehicles matches 3 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/upgrade/glove_box
execute if score $Item bubblevehicles matches 4 run function bubblevehicles:vehicles/abstracts/player/interaction_menu/upgrade/gas_tank
execute if score $Applied bubblevehicles matches 1 run title @p subtitle "Is already applied"
execute if score $Applied bubblevehicles matches 1 run title @p title "The upgrade"
function bubblevehicles:vehicles/abstracts/seat/gui