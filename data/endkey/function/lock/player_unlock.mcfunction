# consume item
execute as @s[gamemode=!creative] run item modify entity @s weapon.mainhand endkey:consume

# store successful unlock in scoreboard
scoreboard players set $unlock endkey.data 1