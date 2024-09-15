# adds the bone stick to the new player
tag @a[advancements={camo:boned/function/boned=true}] add BonedTransfer
scoreboard players add @a[tag=BonedTransfer] BonedGameLeaderboard 1
title @a[tag=BonedTransfer] title "Get Boned!"
execute at @a[tag=BonedTransfer] run playsound item.totem.use player @a[tag=BonedTransfer] ~ ~ ~ 1
effect give @a[tag=BonedTransfer] blindness 5 0 true
function camo:boned/event/give_bone
advancement revoke @a only camo:boned/function/boned
tag @a[tag=BonedTransfer] add Boned
return run tag @a[tag=BonedTransfer] remove BonedTransfer

# for old totem data
#tag @a[advancements={camo:boner/function/boned=true}] add BoneMe
#schedule function camo:boner/give_item 2s append

