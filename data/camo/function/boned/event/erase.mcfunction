function camo:boned/event/reset
tag @a remove BonedBlacklist
scoreboard players reset * BonedGameAdvancements
scoreboard players reset * BonedGameLeaderboard
data merge storage camo:boned_data {horse_container:0b,ender_chest:0b,container:0b,entity_container:0b,frame_container:0b}
data remove storage camo:boned_data potion_slot
data remove storage camo:boned_data bonemeal_uuid_0
data remove storage camo:boned_data bonemeal_uuid_1
data remove storage camo:boned_data bonemeal_uuid_2
data remove storage camo:boned_data bonemeal_uuid_3
data remove storage camo:boned_data selected_potion_id
data remove storage camo:boned_data selected_potion_amplifier
data remove storage camo:boned_data selected_potion_duration
data remove storage camo:boned_data boned_effects
data remove storage camo:boned_data potion_counter
data remove storage camo:boned_data totem_health