# adds the bone stick to the new player
tag @a[advancements={camo:boned/function/boned=true}] add BonedTransfer
scoreboard players set @a[tag=BonedTransfer] BonedGameBoned 1
scoreboard players add @a[tag=BonedTransfer] BonedGameLeaderboard 1
title @a[tag=BonedTransfer] title "Get Boned!"

execute if score TotemAnim BonedGameConfig matches 1 run return run function camo:boned/transfer/totem_give with storage camo:boned_data


effect give @a[tag=BonedTransfer] blindness 5 0 true
execute at @a[tag=BonedTransfer] run playsound item.totem.use player @a[tag=BonedTransfer] ~ ~ ~ 1
tag @a[tag=BonedTransfer] add Boned
function camo:boned/event/give_bone
advancement revoke @a only camo:boned/function/boned
tag @a[tag=BonedTransfer] remove BonedTransfer

