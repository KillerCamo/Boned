# loads the scoreboards into the world
scoreboard objectives add BonerGame dummy
scoreboard objectives add BonerGameTagBacks dummy
scoreboard objectives add BonedGameConfig dummy


# load first time data in although storage isnt priority
data merge storage camo:boned_data {horse_container:0b,ender_chest:0b,container:0b,entity_container:0b}