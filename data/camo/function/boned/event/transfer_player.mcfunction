scoreboard players reset * BonedGameBoned
tag @a remove Boned
scoreboard players reset * BonedGameTagBacks
tag @r[tag=!BonedBlacklist] add BonedTransfer
scoreboard players set @a[tag=BonedTransfer] BonedGameBoned 1
scoreboard players add @a[tag=BonedTransfer] BonedGameLeaderboard 1
execute store result storage camo:boned_data totem_health float 1 run data get entity @a[tag=BonedTransfer,limit=1] Health
title @a[tag=BonedTransfer] title "Get Boned!"
tellraw @a[tag=BonedTransfer] "An operator has transferred the bone to you via commands."

execute if score TotemAnim BonedGameConfig matches 1 run return run function camo:boned/transfer/totem_give with storage camo:boned_data

execute at @a[tag=BonedTransfer] run playsound item.totem.use player @a[tag=BonedTransfer] ~ ~ ~ 1
effect give @a[tag=BonedTransfer] blindness 5 0 true
tag @a[tag=BonedTransfer] add Boned
function camo:boned/event/give_bone
tag @a[tag=BonedTransfer] remove BonedTransfer