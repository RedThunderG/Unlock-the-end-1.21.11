# kill interaction and hitbox
kill @s
kill @e[tag=endkey.lock.hitbox,distance=1]

# change the item display to have no lock
data modify entity @n[tag=endkey.lock.display] item.components."minecraft:custom_model_data".strings insert 0 value "endkey.frame"

# sounds and visuals
playsound minecraft:block.vault.open_shutter block @a ~ ~1 ~ 1 0.9
playsound minecraft:block.end_portal.spawn block @a ~ ~1 ~ 0.1 2

particle minecraft:flash ~ ~ ~