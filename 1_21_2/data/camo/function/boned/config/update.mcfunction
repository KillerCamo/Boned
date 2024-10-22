execute if score ConfigVersion BonedGame matches 3 run return 1
say Boned Configuration Settings Updated to V3!
execute if score ConfigVersion BonedGame matches 2 run scoreboard players set TotemAnim BonedGameConfig 1
say Boned Configuration Settings Updated to V2!
execute if score ConfigVersion BonedGame matches 1 run scoreboard players set Tagbacks BonedGameConfig 1
scoreboard players set ConfigVersion BonedGame 3