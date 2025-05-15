execute if score ConfigVersion BonedGame matches 4 run return 1
execute if score ConfigVersion BonedGame matches 3 run scoreboard players reset Tagbacks BonedGameConfig
 execute if score ConfigVersion BonedGame matches 3 run scoreboard players reset BoneGrowth BonedGameConfig
 execute if score ConfigVersion BonedGame matches 3 run scoreboard players reset TotemAnim BonedGameConfig
 execute if score ConfigVersion BonedGame matches 2 run scoreboard players set Tagbacks BonedGameConfig 0
execute if score ConfigVersion BonedGame matches 1 run scoreboard players set Tagbacks BonedGameConfig 1

execute if score ConfigVersion BonedGame matches 4 run say Boned Configuration Settings Updated to V4!
scoreboard players set ConfigVersion BonedGame 4

## each change should be one version less
## Version 2 added Tagbacks
## Version 3 Flips the Tagback Setting
## Version 4 Removes the Configuration Toggles.