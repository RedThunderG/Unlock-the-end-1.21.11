# reset unlock
scoreboard players reset $unlock endkey.data

# test for different keys
$execute if entity @s[tag=endkey.lock.warden] as @p[nbt={UUID:$(player)}] if items entity @s weapon.mainhand minecraft:trial_key[item_model="endkey:warden_key"] run function endkey:lock/player_unlock
$execute if entity @s[tag=endkey.lock.bastion] as @p[nbt={UUID:$(player)}] if items entity @s weapon.mainhand minecraft:trial_key[item_model="endkey:bastion_key"] run function endkey:lock/player_unlock
$execute if entity @s[tag=endkey.lock.trial] as @p[nbt={UUID:$(player)}] if items entity @s weapon.mainhand minecraft:ominous_trial_key run function endkey:lock/player_unlock
$execute if entity @s[tag=endkey.lock.illager] as @p[nbt={UUID:$(player)}] if items entity @s weapon.mainhand minecraft:trial_key[item_model="endkey:illager_key"] run function endkey:lock/player_unlock
$execute as @p[nbt={UUID:$(player)}] if items entity @s weapon.mainhand minecraft:trial_key[item_model="endkey:master_key"] run function endkey:lock/player_unlock

# fail or success
$execute unless score $unlock endkey.data matches 1 if items entity @p[nbt={UUID:$(player)}] weapon.mainhand * run function endkey:lock/unlock/fail
execute if score $unlock endkey.data matches 1 run function endkey:lock/unlock/success

# remove interaction data
data remove entity @s interaction