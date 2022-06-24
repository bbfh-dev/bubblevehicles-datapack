scoreboard players set $RaycastLimit bubblevehicles 0
execute if score $ProjectileType buvs.settings matches 1 run summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Colors:[I;14602026],FadeColors:[I;11743532,15435844]}],Flight:1}}}}
execute if score $ProjectileType buvs.settings matches 2 run summon creeper ~ ~ ~ {Fuse:0s, ignited:1b, ExplosionRadius:4b}
kill @s