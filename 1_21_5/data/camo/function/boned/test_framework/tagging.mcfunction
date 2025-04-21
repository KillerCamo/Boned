say OH MY GOD A BONER TEST!
function camo:boned/event/reset
scoreboard players set TotemAnim BonedGameConfig 0
scoreboard players set Tagbacks BonedGameConfig 1
scoreboard players set BonedGrowth BonedGameConfig 0
gamemode survival @a
clear @a
schedule function camo:boned/test_framework/failed 7s
function camo:boned/event/start_game_specific_player {player:"KillerCamo"}