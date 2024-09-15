# removes the bone stick from the old player
tag @a[advancements={camo:boned/function/boning=true}] add BonedAntiClear
tag @a[advancements={camo:boned/function/boning=true}] remove Boned
tag @a[advancements={camo:boned/function/boning=true}] add BonedImmunity
scoreboard players reset @a[tag=!BonedBlacklist] BonedGameTagBacks
scoreboard players set @a[tag=BonedImmunity] BonedGameTagBacks 1
tag @a[tag=BonedAntiClear] remove BonedAntiClear
advancement revoke @a only camo:boned/function/boning

