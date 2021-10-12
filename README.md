# BubbleVehicles datapack
This is the master branch of BubbleVehicles datapack

All information about the datapack may be found on [Planet Minecraft page](https://www.planetminecraft.com/data-pack/bubblevehicles-release/).

# **For Developers**
**This documentation is NOT finished yet**
* [Introduction](#intro)
* **Vehicles**:
    * [Adding a new vehicle](#adding-vehicles)
        1. [Summoning vehicle](#summoning-vehicle)
        2. [**Set properties** function](#set-properties-function)
        3. [Vehicle model](#vehicle-model)
    * [Adding action button to a vehicle](#adding-action-button)


# **Introduction** <a id="intro"></a>
This page is made for people who want to remix/fork/plugin the datapack, or for those who want to make their own datapacks based on BubbleVehicles.

`<vehicle_path>` is a folder where you store all functions related to the vehicle. *Example: `bubblevehicles:vehicles/my_new_vehicle/` (function path to folder located in `data/bubblevehicles/functions/vehicles/my_new_vehicle/`)*


# **Adding a new vehicle** <a id="adding-vehicles"></a>
Adding new vehicles in BubbleVehicles 3.X is insanely simple and performed within a few seconds/minutes when you understand the concept

### #1 **Summoning vehicle**: <a id="summoning-vehicle"></a>
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

### #1.1 **Set properties** function: <a id="set-properties-function"></a>
```java
scoreboard players set @s buvs.max_speed #1
scoreboard players set @s buvs.min_speed #2
scoreboard players set @s buvs.accelerate0 #3
scoreboard players set @s buvs.accelerate1 #4
scoreboard players set @s buvs.accelerate2 #5
scoreboard players set @s buvs.accelerate3 #6
scoreboard players set @s buvs.accelerate4 #7
scoreboard players set @s buvs.accelerate5 #8
scoreboard players set @s buvs.accelerate6 #9
scoreboard players set @s buvs.engine_type #10
scoreboard players set @s buvs.paint_type #11
scoreboard players set @s buvs.tank_cap #12
scoreboard players set @s buvs.tank_mod #13
scoreboard players set @s buvs.gears_count #14
scoreboard players set @s buvs.inventory #15
scoreboard players set @s buvs.health #16
scoreboard players set @s buvs.health_cap #17
scoreboard players set @s buvs.actions #18
scoreboard players set @s bvdata.color1 #19
scoreboard players set @s bvdata.color2 #20
scoreboard players set @s bvdata.color3 #21

function bubblevehicles:vehicles/abstracts/origin/register
```
(Replace `#...` with an integer)
* `buvs.max_speed`
    * Limits vehicle speed (positive integer)
* `buvs.min_speed`
    * Limits vehicle rear speed (negative integer)
* `buvs.accelerate0`
    * For [**Simple Ground**](#simple-ground):
        * How many points will be removed every tick on rear gear
        * How quick vehicle will be stopping
    * For [**Simple Air**](#simple-air):
        * How quick vehicle will be stopping
* `buvs.accelerate1`, ..., `buvs.accelerate6`
    * For [**Simple Ground**](#simple-ground):
        * How many points will be added every tick on `1st, ..., 6th` gear
    * For [**Simple Air**](#simple-air):
        * How many points will be added every tick on `-6th, ..., -1st` & `1st, ..., 6th` gear
* `buvs.engine_type`
    * Engine type lets you generalize vehicle behavior
    * Right now there are 2 types of engines
        * Simple Ground <a id="simple-ground"></a>
            * For ground vehicles
            * Value: `0`
        * Simple Air <a id="simple-air"></a>
            * For helicopters
            * Value: `1`
    * New engine types can be added any time
* `buvs.paint_type`
    * Paint Type lets you specify what blocks/items can be used to paint vehicle and what parts of the vehicle they change
    * Right now there are 3 paint types
        * No paint
            * For vehicles that are not paintable (not recommended to use, unless the coloration must remain the same)
            * Value: `0`
        * Leather
            * For vehicles that are made of leather armor
            * Value: `1`
        * Solid
            * Most common one
            * Value: `2`
    * New paint types can be added any time
* `buvs.tank_cap`
    * Capacity of fuel tank
* `buvs.tank_mod`
    * `buvs.tank_cap` devided by 20
* `buvs.gears_count`
    * *This property is a rudiment*
        * *When gears count is less than maximum amount, max speed becomes useless at some moment*
    * Lets you limit the amount of gears.
* `buvs.inventory`
    * Value from 1 to 5, the capacity of vehicle trunk
        * Every one point unlocks 3 slots
* `buvs.health`
    * Health of the vehicle
* `buvs.health_cap`
    * When Health is lower than health capacity vehicle starts smoking
* `buvs.actions`
    * Value from 0 to 1 that tells whether vehicle has an action button
* `bvdata.color1`
    * Default [primary color code](#color-code)
* `bvdata.color2`
    * Default [pattern color code](#color-code)
* `bvdata.color3`
    * Default [decor color code](#color-code)

### #1.3 **Vehicle model**: <a id="vehicle-model"></a>
Vehicle model is made of [controller](#controller), [seats](#seat) and [mesh](#mesh).
1. Create a new function `<vehicle_path>/model`
2. In `bubblevehicles:vehicles/abstracts/origin/render` add a new line: `execute as @s[tag=buvs.<NAME>] run function <vehicle_path>/model`. Replace `<NAME>` with your vehicle name capitalized.
3. Create a mesh in the `<vehicle_path>/model` function you have made
    * This function runs when the vehicle is loaded
    * Check out how other vehicles are made and do a similar way
        * Mesh
            * You write `summon armor_stand` functions in relative position. All mesh must have `buvs.<NAME>` tag and a specific id, that is specified in `-buvs.id_<ID>`, the rest is fully customazible
        * Seats and controller
            * You only change tags that contain vehicle names to the name of your vehicle, as well as you can use a bunch of seats, there's only 1 driver seat, the rest must have `-buvs.passenger` tag
        * Finish
            * Registers all model elements. **THE SAME FOR ALL VEHICLES**, except you need to change `limit=` for every line to the amount of elements of the type you have
4. In the same directory create a function `display`
5. In `bubblevehicles:vehicles/abstracts/controller/display` add a line the same as you did for model
6. Specify locations of all elements
    * The best way to understand this, is to check out how it's made in other vehicles. You only need to change id-s and positions (^ ^ ^)

**Vehicle is added and should work good now.**

# **Adding action button to a vehicle** <a id="adding-action-button"></a>
...