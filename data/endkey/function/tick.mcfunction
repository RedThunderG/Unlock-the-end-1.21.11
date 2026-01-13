# replace silverfish spawner with command block that prepares the room
execute at @a[predicate=endkey:other_tick] run fill ~32 ~16 ~32 ~-32 ~-16 ~-32 minecraft:command_block{Command:"function endkey:room/prep",auto:1b} replace minecraft:spawner{SpawnData:{entity:{id:"minecraft:silverfish"}},MaxSpawnDelay:800s}

# tick keyhole interactions
execute as @e[tag=endkey.lock] run function endkey:lock/tick
execute as @e[tag=endkey.lock.hitbox] run function endkey:lock/tick_hitbox

# kill lock displays when its end portal frame is gone
execute as @e[tag=endkey.lock.display] at @s unless block ~ ~0.5 ~ minecraft:end_portal_frame run kill @s