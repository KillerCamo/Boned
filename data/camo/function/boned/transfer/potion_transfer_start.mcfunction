scoreboard players add PotionSlot BonedGame 1
execute store result storage camo:boned_data potion_slot int 1 run scoreboard players get PotionSlot BonedGame
function camo:boned/transfer/potion_transfer with storage camo:boned_data