function camo:boned/event/erase
data remove storage camo:boned_data container
data remove storage camo:boned_data entity_container
data remove storage camo:boned_data ender_chest
data remove storage camo:boned_data horse_container
data remove storage camo:boned_data frame_container
scoreboard objectives remove BonedGame
scoreboard objectives remove BonedGameLeaderboard
scoreboard objectives remove BonedGameTagBacks
scoreboard objectives remove BonedGameBoned
scoreboard objectives remove BonedGameAdvancements
scoreboard objectives remove BonedGameConfig