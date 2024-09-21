# does a soft reset on the game and resets everything besides the advancements (Not the advancements tied to the leaderboard)
scoreboard players reset * BonedGameBoned
tag @a remove BonedTransfer
tag @a remove BonedImmunity
scoreboard players reset * BonedGameTagBacks
clear @a bone[custom_data={Boned:1b}]
scoreboard players set GameState BonedGame 0

# return run function camo:boned/events/reset