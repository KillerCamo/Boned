scoreboard players set PotionSlotSuccess BonedGame 0
$execute store success score PotionSlotSuccess BonedGame run data get storage camo:boned_data boned_effects[$(potion_slot)]
execute if score PotionSlotSuccess BonedGame matches 0 run return run say Potions Completed!
$execute store result storage camo:boned_data selected_potion_duration int 0.05 run data get storage camo:boned_data boned_effects[$(potion_slot)].duration
$execute if data storage camo:boned_data boned_effects[$(potion_slot)].amplifier run return run function camo:boned/transfer/potion_give_stats with storage camo:boned_data boned_effects[$(potion_slot)]
$function camo:boned/transfer/potion_give_stats_no_amp with storage camo:boned_data boned_effects[$(potion_slot)]
