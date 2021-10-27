tag @s add btemp.originA

scoreboard players operation @s buvs.MaxSpeed = @s buvs.max_speed
scoreboard players operation @s buvs.MinSpeed = @s buvs.min_speed
scoreboard players operation @s buvs.Gear0 = @s buvs.accelerate0
scoreboard players operation @s buvs.Gear1 = @s buvs.accelerate1
scoreboard players operation @s buvs.Gear2 = @s buvs.accelerate2
scoreboard players operation @s buvs.Gear3 = @s buvs.accelerate3
scoreboard players operation @s buvs.Gear4 = @s buvs.accelerate4
scoreboard players operation @s buvs.Gear5 = @s buvs.accelerate5
scoreboard players operation @s buvs.Gear6 = @s buvs.accelerate6
scoreboard players operation @s buvs.TankCap = @s buvs.tank_cap
scoreboard players operation @s buvs.Items = @s buvs.inventory


scoreboard players operation @s buvs.MaxSpeed *= @s bvdata.upgrade0
scoreboard players operation @s buvs.MaxSpeed /= 100 buvs.const
scoreboard players operation @s buvs.MinSpeed *= @s bvdata.upgrade0
scoreboard players operation @s buvs.MinSpeed /= 100 buvs.const

scoreboard players operation @s buvs.Gear0 *= @s bvdata.upgrade1
scoreboard players operation @s buvs.Gear0 /= 100 buvs.const
scoreboard players operation @s buvs.Gear1 *= @s bvdata.upgrade1
scoreboard players operation @s buvs.Gear1 /= 100 buvs.const
scoreboard players operation @s buvs.Gear2 *= @s bvdata.upgrade1
scoreboard players operation @s buvs.Gear2 /= 100 buvs.const
scoreboard players operation @s buvs.Gear3 *= @s bvdata.upgrade1
scoreboard players operation @s buvs.Gear3 /= 100 buvs.const
scoreboard players operation @s buvs.Gear4 *= @s bvdata.upgrade1
scoreboard players operation @s buvs.Gear4 /= 100 buvs.const
scoreboard players operation @s buvs.Gear5 *= @s bvdata.upgrade1
scoreboard players operation @s buvs.Gear5 /= 100 buvs.const

scoreboard players operation @s buvs.TankCap *= @s bvdata.upgrade2
scoreboard players operation @s buvs.TankCap /= 100 buvs.const

scoreboard players operation @s buvs.Items += @s bvdata.upgrade4