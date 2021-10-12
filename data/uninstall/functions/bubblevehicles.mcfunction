say §7Uninstalling §e§lBubbleVehicles 3.0b§r§7...

execute as @e[type=marker, tag=buvs.origin] run function bubblevehicles:vehicles/abstracts/origin/kill
tag @a remove btemp.playerV
tag @a remove btemp.driver

advancement revoke @a only bubblevehicles:event/driving
advancement revoke @a only bubblevehicles:event/not_registered
advancement revoke @a only bubblevehicles:event/player_tick
advancement revoke @a only bubblevehicles:event/started_riding
advancement revoke @a only bubblevehicles:event/stopped_riding
advancement revoke @a only bubblevehicles:event/vehicle_interaction
scoreboard objectives remove bubblevehicles
scoreboard objectives remove buvs.registry
scoreboard objectives remove bvehicle.vectorX
scoreboard objectives remove bvehicle.vectorZ
scoreboard objectives remove bvehicle.vectorA
scoreboard objectives remove buvsInput.angle
scoreboard objectives remove buvsInput.value
scoreboard objectives remove buvs.max_speed
scoreboard objectives remove buvs.min_speed
scoreboard objectives remove buvs.accelerate0
scoreboard objectives remove buvs.accelerate1
scoreboard objectives remove buvs.accelerate2
scoreboard objectives remove buvs.accelerate3
scoreboard objectives remove buvs.accelerate4
scoreboard objectives remove buvs.accelerate5
scoreboard objectives remove buvs.accelerate6
scoreboard objectives remove buvs.engine_type
scoreboard objectives remove buvs.paint_type
scoreboard objectives remove buvs.tank_cap
scoreboard objectives remove buvs.tank_mod
scoreboard objectives remove buvs.gears_count
scoreboard objectives remove buvs.inventory
scoreboard objectives remove buvs.health
scoreboard objectives remove buvs.health_cap
scoreboard objectives remove buvs.actions
scoreboard objectives remove bvehicle.action
scoreboard objectives remove bvehicle.health
scoreboard objectives remove bvehicle.speed
scoreboard objectives remove bvehicle.brake
scoreboard objectives remove bvehicle.sound
scoreboard objectives remove bvehicle.fuel
scoreboard objectives remove bvehicle.gear
scoreboard objectives remove bvehicle.upwards
scoreboard objectives remove bvdata.digit0
scoreboard objectives remove bvdata.digit1
scoreboard objectives remove bvdata.digit2
scoreboard objectives remove bvdata.digit3
scoreboard objectives remove bvdata.color1
scoreboard objectives remove bvdata.color2
scoreboard objectives remove bvdata.color3
scoreboard objectives remove bvdata.timer1
scoreboard objectives remove bvdata.timer2
scoreboard objectives remove bvdata.timer3
scoreboard objectives remove bvdata.timer4
scoreboard objectives remove buvs.const
scoreboard objectives remove buvs.leave_game
scoreboard objectives remove buvs.settings

team remove bubblevehicles

datapack disable "file/bubblevehicles-v3-0a"
datapack disable "file/bubblevehicles-v3-0a.zip"
datapack disable "file/bubblevehicles-v3-0a.rar"
reload
say §c§lBubbleVehicles 3.0b §r§edatapack uninstalled & purged