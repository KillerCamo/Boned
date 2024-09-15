scoreboard players set PotionSlot BonerGame -1
$data merge storage camo:boned_data {boned_effects:$(active_effects)}
effect clear @a[tag=Boned]
function camo:boned/transfer/potion_transfer_start