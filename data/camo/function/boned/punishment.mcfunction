execute if data storage camo:boner_game_data {punishment_active:1b} run damage @a[tag=BonerGuy,limit=1] 5 camo:scumbag
execute if data storage camo:boner_game_data {punishment_active:0b} run tag @a[tag=BonerGuy] add Scumbag
execute if data storage camo:boner_game_data {punishment_active:0b} run data merge storage camo:boner_game_data {punishment_active:1b}
execute if data storage camo:boner_game_data {punishment_active:1b} run schedule function camo:boner/punishment 3s