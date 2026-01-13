# replace spawner with a spawner with different data so it is no longer detectable
# We set SpawnRange to 0s so the tick function doesn't detect it again (it looks for 4s).
setblock ~ ~ ~ spawner{SpawnData:{entity:{id:"minecraft:silverfish"}},SpawnRange:0s}

# detect end portal location and create room
execute if block ~2 ~ ~ minecraft:end_portal_frame positioned ~4 ~ ~ run return run function endkey:room/create
execute if block ~-2 ~ ~ minecraft:end_portal_frame positioned ~-4 ~ ~ run return run function endkey:room/create
execute if block ~ ~ ~2 minecraft:end_portal_frame positioned ~ ~ ~4 run return run function endkey:room/create
execute if block ~ ~ ~-2 minecraft:end_portal_frame positioned ~ ~ ~-4 run return run function endkey:room/create

    # stellarity rooms
    execute if block ~2 ~1 ~ minecraft:end_portal_frame positioned ~4 ~1 ~ run return run function endkey:room/create
    execute if block ~-2 ~1 ~ minecraft:end_portal_frame positioned ~-4 ~1 ~ run return run function endkey:room/create
    execute if block ~ ~1 ~2 minecraft:end_portal_frame positioned ~ ~1 ~4 run return run function endkey:room/create
    execute if block ~ ~1 ~-2 minecraft:end_portal_frame positioned ~ ~1 ~-4 run return run function endkey:room/create
    execute if block ~4 ~1 ~ minecraft:end_portal_frame positioned ~6 ~1 ~ run return run function endkey:room/create
    execute if block ~-4 ~1 ~ minecraft:end_portal_frame positioned ~-6 ~1 ~ run return run function endkey:room/create
    execute if block ~ ~1 ~4 minecraft:end_portal_frame positioned ~ ~1 ~6 run return run function endkey:room/create
    execute if block ~ ~1 ~-4 minecraft:end_portal_frame positioned ~ ~1 ~-6 run function endkey:room/create
    execute if block ~1 ~1 ~ minecraft:end_portal_frame positioned ~3 ~1 ~ run return run function endkey:room/create
    execute if block ~-1 ~1 ~ minecraft:end_portal_frame positioned ~-3 ~1 ~ run return run function endkey:room/create
    execute if block ~ ~1 ~1 minecraft:end_portal_frame positioned ~ ~1 ~3 run return run function endkey:room/create
    execute if block ~ ~1 ~-1 minecraft:end_portal_frame positioned ~ ~1 ~-3 run function endkey:room/create