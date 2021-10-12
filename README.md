# BubbleVehicles datapack
This is the master branch of BubbleVehicles datapack

All information about the datapack may be found on [Planet Minecraft page](https://www.planetminecraft.com/data-pack/bubblevehicles-release/).

# **For Developers**
* [Introduction](#intro)
* **Vehicles**:
    * [Adding a new vehicle](#adding-vehicles)


# **Introduction** <a id="intro"></a>
This page is made for people who want to remix/fork/plugin the datapack, or for those who want to make their own datapacks based on BubbleVehicles.

`<vehicle_path>` is a folder where you store all functions related to the vehicle. *Example: `bubblevehicles:vehicles/my_new_vehicle/` (function path to folder located in `data/bubblevehicles/functions/vehicles/my_new_vehicle/`)*


# **Adding a new vehicle** <a id="adding-vehicles"></a>
Adding new vehicles in BubbleVehicles 3.X is insanely simple:

### §1 **Summoning vehicle**:
* If you edit the datapack
    * Go to `data/summon/bubblevehicles/` and create a new function with your vehicle name *Example: `my_new_car.mcfunction`*
* If you develop a fork/remix/plugin
    * Go to `data/summon/bubblevehicles/` and create a new folder with your namespace *Example: `my_fork`*
    * Create a new function with your vehicle name *Example: `my_new_car.mcfunction`*

The function content:
```py
# Summoning vehicle origin:
summon minecraft:marker ~ ~ ~ {Tags:["buvs.<NAME>", "buvs.origin", "bubblevehicles", "buvs.notset"], data:{VehicleTag:"buvs.<NAME>"}, CustomName:'"<Name>"'}

# Registering vehicle and seting up its properties
function bubblevehicles:vehicles/abstracts/registry/generate

execute as @e[type=minecraft:marker, tag=buvs.origin, tag=buvs.notset, limit=1] run function <vehicle_path>/set_properties
```
* `<NAME>` – Name of the vehicle in uppercase *Example: `MY_NEW_CAR`*
* `<Name>` – Name of the vehicle in Camel Case *Example: `My New Car`*
* `<name>` – Name of the vehicle in all lowercase *Example: `my_new_car`*

### §1.1 **Set properties** function:
```java
scoreboard players set @s buvs.max_speed 1900
scoreboard players set @s buvs.min_speed -500
scoreboard players set @s buvs.accelerate0 40
scoreboard players set @s buvs.accelerate1 8
scoreboard players set @s buvs.accelerate2 10
scoreboard players set @s buvs.accelerate3 12
scoreboard players set @s buvs.accelerate4 7
scoreboard players set @s buvs.accelerate5 5
scoreboard players set @s buvs.accelerate6 0
scoreboard players set @s buvs.engine_type 0
scoreboard players set @s buvs.paint_type 2
scoreboard players set @s buvs.tank_cap 50000
scoreboard players set @s buvs.tank_mod 2500
scoreboard players set @s buvs.gears_count 6
scoreboard players set @s buvs.inventory 3
scoreboard players set @s buvs.health 240
scoreboard players set @s buvs.health_cap 60
scoreboard players set @s buvs.actions 0
scoreboard players set @s bvdata.color1 14
scoreboard players set @s bvdata.color2 14
scoreboard players set @s bvdata.color3 6

function bubblevehicles:vehicles/abstracts/origin/register
```