# replace spawner with a spawner with different data so it is no longer detectable
setblock ~ ~ ~ spawner{SpawnData:{entity:{id:"minecraft:silverfish"}},MaxSpawnDelay:799s}

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