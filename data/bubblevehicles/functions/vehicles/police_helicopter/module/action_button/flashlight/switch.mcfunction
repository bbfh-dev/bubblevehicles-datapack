tag @a remove btemp.playerV
tag @p add btemp.playerV

scoreboard players set @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer1 3
scoreboard players add @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer2 1
scoreboard players set @e[type=marker, tag=btemp.origin, limit=1, scores={bvdata.timer2=2..}] bvdata.timer2 0

execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer2 matches 0 as @e[type=armor_stand, tag=buvs.mesh, tag=buvs.POLICE_HELICOPTER, tag=-buvs.id_22] if score @s buvs.registry = @p buvs.registry run item replace entity @s armor.head with player_head{SkullOwner:{Id:[I;1816894948,-708554922,-1382104084,762586022],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzJjYWE1NGJkMGJkY2ZkNzdjYjA2YzI1OGM3YzViODNiNTI2NzE4ZDA0ZDg0ZTRkMTg3YjZkOTcwMjYyYyJ9fX0="}]}}}
execute if score @e[type=marker, tag=btemp.origin, limit=1] bvdata.timer2 matches 1 as @e[type=armor_stand, tag=buvs.mesh, tag=buvs.POLICE_HELICOPTER, tag=-buvs.id_22] if score @s buvs.registry = @p buvs.registry run item replace entity @s armor.head with player_head{SkullOwner:{Id:[I;-1307969853,2029077141,-1326557893,-106254145],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTY5ODIxNzcyY2EyNjczZjRhY2I1MzkzZDEyNmIyZTYyZTgyY2U4NTVhNDljZmVlYTc3ODMwYzVkMTI0YSJ9fX0="}]}}}

execute as @e[type=armor_stand, tag=buvs.mesh, tag=buvs.POLICE_HELICOPTER, tag=-buvs.id_22] if score @s buvs.registry = @p buvs.registry at @s rotated as @p[tag=btemp.playerV] run function bubblevehicles:vehicles/police_helicopter/module/action_button/flashlight/instance