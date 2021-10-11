say §7Uninstalling §e§lBubbleVehicles 2.x§r§7...

say §7Updating vehicles to §e§lBubbleVehicles 3.x
execute as @e[type=marker, tag=buvs.origin] at @s run function bubblevehicles:settings/uninstall_outdated_version/update_origin

scoreboard objectives remove bubblevehicles
scoreboard objectives remove buvs.input
scoreboard objectives remove buvs.vectorSpeed
scoreboard objectives remove bvehicle.state
scoreboard objectives remove bvehicle.color
scoreboard objectives remove bvehicle.decor
scoreboard objectives remove bvehicle.sound
scoreboard objectives remove bvehicle.gear
scoreboard objectives remove bvehicle.keyA
scoreboard objectives remove bvehicle.keyB
scoreboard objectives remove bvehicle.keyC
scoreboard objectives remove bvehicle.keyD
scoreboard objectives remove bvehicle.y
scoreboard objectives remove buvs.const
tag @e remove bubblevehicles.summon
tag @a remove buvs.onStartedRiding

datapack disable "file/bubblevehicles-v2-2a"
datapack disable "file/bubblevehicles-v2-2a.zip"
datapack disable "file/bubblevehicles-v2-2a.rar"
datapack disable "file/bubblevehicles-v2-1a"
datapack disable "file/bubblevehicles-v2-1a.zip"
datapack disable "file/bubblevehicles-v2-1a.rar"
datapack disable "file/bubblevehicles-v2-0a"
datapack disable "file/bubblevehicles-v2-0a.zip"
datapack disable "file/bubblevehicles-v2-0a.rar"
say §c§lBubbleVehicles 2.x §r§edatapack(s) uninstalled & purged
reload