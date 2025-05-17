execute if score ConfigVersion BonedGame matches 4 run scoreboard players set Tagbacks BonedGameConfig 0
execute if score ConfigVersion BonedGame matches 4 run say Boned Configuration Settings Updated to V4!
execute if score ConfigVersion BonedGame matches 2 run return 1
execute if score ConfigVersion BonedGame matches 2 run say Boned Configuration Settings Updated to V2!
execute if score ConfigVersion BonedGame matches 1 run scoreboard players set Tagbacks BonedGameConfig 1
scoreboard players set ConfigVersion BonedGame 4