# removes the bone stick from the old player
tag @a[advancements={camo:boned/function/boning=true}] add BonedAntiClear
tag @a[advancements={camo:boned/function/boning=true}] remove Boned
scoreboard players reset * BonedGameTagBacks
scoreboard players set @a[tag=BonedAntiClear] BonedGameTagBacks 1
tag @a[tag=BonedAntiClear] add BonedImmunity
scoreboard players set @a[tag=BonedImmunity] BonedGameBoned 0
tag @a[tag=BonedAntiClear] remove BonedAntiClear
advancement revoke @a only camo:boned/function/boning

