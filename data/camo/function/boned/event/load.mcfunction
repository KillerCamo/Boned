# loads the scoreboards into the world
scoreboard objectives add BonedGame dummy
scoreboard objectives add BonedGameLeaderboard dummy
scoreboard objectives add BonedGameTagBacks dummy
scoreboard objectives add BonedGameBoned dummy
scoreboard objectives add BonedGameAdvancements dummy
scoreboard objectives add BonedGameConfig trigger


# load first time data in although storage isnt priority

execute if score BaseInstallation BonedGame matches 1 run return run function camo:boned/config/update
data merge storage camo:boned_data {horse_container:0b,ender_chest:0b,container:0b,entity_container:0b,frame_container:0b}
scoreboard players set TotemAnim BonedGameConfig 0
scoreboard players set BoneGrowth BonedGameConfig 0
scoreboard players add Tagbacks BonedGameConfig 1
say Boned installed! (V1.1.0)
scoreboard players set ConfigVersion BonedGame 2
scoreboard players set BaseInstallation BonedGame 1