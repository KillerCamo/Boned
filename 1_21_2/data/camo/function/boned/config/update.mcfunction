execute if score ConfigVersion BonedGameConfig matches 4 run return 0
execute if score ConfigVersion BonedGame matches 1 run scoreboard players set Tagbacks BonedGameConfig 1
execute if score ConfigVersion BonedGame matches 2 run scoreboard players set TotemAnim BonedGameConfig 1
execute if score ConfigVersion BonedGame matches 2 run say Boned Configuration Settings Updated to V2!
execute if score ConfigVersion BonedGame matches 3 run return 1
execute if score ConfigVersion BonedGame matches 3 run say Boned Configuration Settings Updated to V3!
execute if score ConfigVersion BonedGame matches 3 run data remove storage camo:boned_data totem_health
execute if score ConfigVersion BonedGame matches 3 run data remove storage camo:boned_data totem_health_max
execute if score ConfigVersion BonedGame matches 3 run data remove storage camo:boned_data totem_absorption
execute if score ConfigVersion BonedGame matches 3 run data remove storage camo:boned_data selected_potion_id
execute if score ConfigVersion BonedGame matches 3 run data remove storage camo:boned_data selected_potion_amplifier
execute if score ConfigVersion BonedGame matches 3 run data remove storage camo:boned_data selected_potion_duration
execute if score ConfigVersion BonedGame matches 3 run data remove storage camo:boned_data infinite_potion_duration_check
execute if score ConfigVersion BonedGame matches 3 run data remove storage camo:boned_data boned_effects
execute if score ConfigVersion BonedGame matches 3 run data remove storage camo:boned_data potion_counter
execute if score ConfigVersion BonedGame matches 4 run scoreboard players set Tagbacks BonedGameConfig 0
execute if score ConfigVersion BonedGame matches 4 run say Boned Configuration Settings Updated to V4!
scoreboard players set ConfigVersion BonedGame 4