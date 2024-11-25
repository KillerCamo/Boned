tag @a[tag=BonedTransfer] add Boned
$damage @a[tag=BonedTransfer,limit=1] $(totem_damage) minecraft:generic
#function camo:boned/transfer/potion_transfer_start
#$damage @a[tag=BonedTransfer,limit=1] $(totem_absorption) minecraft:generic
function camo:boned/event/give_bone
tag @a[tag=BonedTransfer] remove BonedTransfer