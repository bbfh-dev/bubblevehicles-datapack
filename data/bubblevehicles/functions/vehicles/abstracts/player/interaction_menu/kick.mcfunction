function bubblevehicles:vehicles/abstracts/seat/gui
data modify entity @s Items[8].tag.Enchantments set value [{}]
scoreboard players set @s bubblevehicles 8

execute store result score $Chance bubblevehicles run loot spawn ~ -256 ~ loot bubblevehicles:vehicle/kick
execute if score $Chance bubblevehicles matches 1 store result score $Strength bubblevehicles run loot spawn ~ -256 ~ loot bubblevehicles:vehicle/kick_strength
execute if score $Chance bubblevehicles matches 1 as @e[type=marker, tag=btemp.originC, limit=1] run function bubblevehicles:vehicles/abstracts/player/interaction_menu/kick/damage
execute unless score $Chance bubblevehicles matches 1 run title @p actionbar "Failed"