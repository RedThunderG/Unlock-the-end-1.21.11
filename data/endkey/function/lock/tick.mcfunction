# attempt unlock if interacted with
execute if data entity @s interaction unless score @s endkey.unlockDelay matches -1.. at @s run function endkey:lock/try_unlock with entity @s interaction

# unlock delay
execute if score @s endkey.unlockDelay matches 1.. run scoreboard players remove @s endkey.unlockDelay 1
execute if score @s endkey.unlockDelay matches 0 at @s run function endkey:lock/unlock