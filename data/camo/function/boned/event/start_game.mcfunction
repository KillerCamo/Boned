# gives the bone stick to a random player
execute if score GameState BonedGame matches 1 run return run tellraw @p {"text":"Game is already in progress!","color":"red"}

tag @r[tag=!BonedBlacklist] add BonedTransfer
scoreboard players set @a[tag=BonedTransfer] BonedGameBoned 1
tag @a[tag=BonedTransfer] add Boned
say @a[tag=Boned] has the boned!
tag @a[tag=BonedTransfer] remove BonedTransfer
function camo:boned/event/give_bone
scoreboard players set GameState BonedGame 1