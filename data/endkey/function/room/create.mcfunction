# summon interactions
    # summon main lock interactions
summon minecraft:interaction ~2 ~-0.51 ~ {width:1.01,height:0.825,Tags:["endkey.lock","endkey.lock.illager","endkey.lock.hitbox"]}
summon minecraft:interaction ~-2 ~-0.51 ~ {width:1.01,height:0.825,Tags:["endkey.lock","endkey.lock.bastion","endkey.lock.hitbox"]}
summon minecraft:interaction ~ ~-0.51 ~2 {width:1.01,height:0.825,Tags:["endkey.lock","endkey.lock.trial","endkey.lock.hitbox"]}
summon minecraft:interaction ~ ~-0.51 ~-2 {width:1.01,height:0.825,Tags:["endkey.lock","endkey.lock.warden","endkey.lock.hitbox"]}

    # summon hitbox interactions
summon minecraft:interaction ~2 ~-0.51 ~1 {width:1.01,height:0.825,Tags:["endkey.lock.hitbox"]}
summon minecraft:interaction ~2 ~-0.51 ~-1 {width:1.01,height:0.825,Tags:["endkey.lock.hitbox"]}

summon minecraft:interaction ~-2 ~-0.51 ~1 {width:1.01,height:0.825,Tags:["endkey.lock.hitbox"]}
summon minecraft:interaction ~-2 ~-0.51 ~-1 {width:1.01,height:0.825,Tags:["endkey.lock.hitbox"]}

summon minecraft:interaction ~1 ~-0.51 ~2 {width:1.01,height:0.825,Tags:["endkey.lock.hitbox"]}
summon minecraft:interaction ~-1 ~-0.51 ~2 {width:1.01,height:0.825,Tags:["endkey.lock.hitbox"]}

summon minecraft:interaction ~1 ~-0.51 ~-2 {width:1.01,height:0.825,Tags:["endkey.lock.hitbox"]}
summon minecraft:interaction ~-1 ~-0.51 ~-2 {width:1.01,height:0.825,Tags:["endkey.lock.hitbox"]}

# summon displays
summon minecraft:item_display ~2 ~-0.5 ~ {item:{id:"minecraft:diamond",components:{"minecraft:item_model":"endkey:illager_lock"}},Tags:["endkey.lock.display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.01f,2.01f,2.01f],translation:[-0.504f,1.004f,0.504f]},Rotation:[180f,0f]}
summon minecraft:item_display ~-2 ~-0.5 ~ {item:{id:"minecraft:diamond",components:{"minecraft:item_model":"endkey:bastion_lock"}},Tags:["endkey.lock.display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.01f,2.01f,2.01f],translation:[-0.504f,1.004f,0.504f]}}
summon minecraft:item_display ~ ~-0.5 ~2 {item:{id:"minecraft:diamond",components:{"minecraft:item_model":"endkey:trial_lock"}},Tags:["endkey.lock.display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.01f,2.01f,2.01f],translation:[-0.504f,1.004f,0.504f]},Rotation:[270f,0f]}
summon minecraft:item_display ~ ~-0.5 ~-2 {item:{id:"minecraft:diamond",components:{"minecraft:item_model":"endkey:warden_lock"}},Tags:["endkey.lock.display"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2.01f,2.01f,2.01f],translation:[-0.504f,1.004f,0.504f]},Rotation:[90f,0f]}

# clear eyes from portal frames while maintaining the facing direction
fill ~2 ~ ~1 ~2 ~ ~-1 minecraft:end_portal_frame[eye=false,facing=west]
fill ~-2 ~ ~1 ~-2 ~ ~-1 minecraft:end_portal_frame[eye=false,facing=east]
fill ~1 ~ ~2 ~-1 ~ ~2 minecraft:end_portal_frame[eye=false,facing=north]
fill ~1 ~ ~-2 ~-1 ~ ~-2 minecraft:end_portal_frame[eye=false,facing=south]