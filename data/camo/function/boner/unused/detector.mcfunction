# execute if entity @e[nbt={Item:{tag:{Boner:1b}}},type=item] run data merge storage camo:boner_game_data {boner_game_data:2}
# execute if entity @a[tag=!BonerGuy]
execute store result storage camo:boner_game_data item_missing int 1 run clear @a[tag=BonerGuy] bone{Boner:1b} 0
execute if data storage camo:boner_game_data {item_missing:0} run function camo:boner/panic
execute if data storage camo:boner_game_data {active:1b} run function camo:boner/detector
