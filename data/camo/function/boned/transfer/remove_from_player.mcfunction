# removes the bone stick from the old player
tag @a[advancements={camo:boned/function/boning=true}] remove Boned
tag @a[advancements={camo:boned/function/boning=true}] add BonedImmunity
scoreboard players reset * BonedGameTagBacks
scoreboard players set @a[tag=BonedImmunity] BonedGameTagBacks 1
clear @a[tag=BonedImmunity] bone[custom_data={Boned:1b}]
advancement revoke @a only camo:boned/function/boning

