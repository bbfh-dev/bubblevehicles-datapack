function bubblevehicles:vehicles/abstracts/player/message/interaction/registered
scoreboard players operation @e[type=marker, tag=btemp.originA, limit=1] bvdata.digit0 = @p bvdata.digit0
scoreboard players operation @e[type=marker, tag=btemp.originA, limit=1] bvdata.digit1 = @p bvdata.digit1
scoreboard players operation @e[type=marker, tag=btemp.originA, limit=1] bvdata.digit2 = @p bvdata.digit2
scoreboard players operation @e[type=marker, tag=btemp.originA, limit=1] bvdata.digit3 = @p bvdata.digit3
function bubblevehicles:vehicles/abstracts/player/started_riding/seat/run