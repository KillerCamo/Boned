# gives a specific player the bone stick
execute if score GameState BonedGame matches 1 run return run tellraw @p {"text":"Game is already in progress!","color":"red"}
scoreboard players set $(player) BonedGameBoned 1
$tag $(player) add Boned
function camo:boned/event/give_bone
scoreboard players set GameState BonedGame 1