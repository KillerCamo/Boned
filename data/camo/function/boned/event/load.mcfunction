# loads the scoreboards into the world
scoreboard objectives add BonedGame dummy
scoreboard objectives add BonedGameLeaderboard dummy
scoreboard objectives add BonedGameTagBacks dummy
scoreboard objectives add BonedGameConfig dummy


# load first time data in although storage isnt priority
data merge storage camo:boned_data {horse_container:0b,ender_chest:0b,container:0b,entity_container:0b}