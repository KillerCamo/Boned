# does a soft reset on the game and resets everything besides the advancements (Not the advancements tied to the leaderboard)
tag @a remove Boned
tag @a remove BonedTransfer
tag @a remove BonedImmunity
scoreboard players reset * BonedGameTagBacks
clear @a bone[custom_data={Boned:1b}]


# return run function camo:boned/events/reset