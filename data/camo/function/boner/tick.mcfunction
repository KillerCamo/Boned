function camo:boner/remove_from_offline_player with storage camo:boner_game_data {}
function camo:boner/add_to_online_player with storage camo:boner_game_data {}
#scoreboard players set @a[tag=!BonerGuy,scores={BonerGameTagBacks=1}] BonerGameTagBacks 0
execute as @a run scoreboard players add @s BonerGameTagBacks 0
execute as @a if score @s BonerGameTagBacks matches 1 run tag @s add ImmuneToBoner
execute as @a if score @s BonerGameTagBacks matches 0 run tag @s remove ImmuneToBoner
#data store
#advancement revoke @a[tag=BonerGuy] only camo:boner/dead respawned - needs performance fix
# execute if data storage camo:boner_game_data {punishment_active:1b} run data merge storage camo:boner_game_data {missing_failsafe_active:0b}
# execute if entity @e[nbt={Item:{tag:{Boner:1b}}},type=item,name="Bone"] run function camo:boner/give_item
execute store result score BonerItemsOnPlayer BonerGame run clear @a[tag=BonerGuy,tag=!BoneMe,advancements={camo:boner/boned=false}] bone{Boner:1b} 0
execute store result score BoneMealExploitDetection BonerGame run clear @a[tag=BonerGuy,tag=!BoneMe,advancements={camo:boner/boned=false}] bone_meal 0
execute as @a[tag=BonerGuy,advancements={camo:boner/exploit_detection=true}] run execute if score BoneMealExploitDetection BonerGame matches 3..999999 run function camo:boner/exploit_patch
execute store result storage camo:boner_game_data boner_on_player int 1 run scoreboard players get BonerItemsOnPlayer BonerGame
execute store result storage camo:boner_game_data boner_on_player int 1 run scoreboard players operation BonerItemsOnPlayer BonerGame -= Subtractor BonerGame
execute if score BonerItemsOnPlayer BonerGame matches 1..999999 run function camo:boner/overflow with storage camo:boner_game_data
execute if score BonerItemsOnPlayer BonerGame matches -1 run execute as @a[tag=BonerGuy,tag=!BoneMe,advancements={camo:boner/boned=false}] run function camo:boner/give_item
# execute if data storage camo:boner_game_data {missing_failsafe_active:0b,boner_on_player:0} run function camo:boner/missing_failsafe
# execute if data storage camo:boner_game_data {boner_on_player:1} run data merge storage camo:boner_game_data {missing_failsafe_active:0b}
# execute if data storage camo:boner_game_data {boner_on_player:1} run schedule clear camo:boner/missing_failsafe


# scoreboard needs to be one less than boner count