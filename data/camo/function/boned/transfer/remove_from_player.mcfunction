# removes the bone stick from the old player
tag @a[advancements={camo:boner/function/boning=true}] remove Boned
tag @a[advancements={camo:boner/function/boning=true}] add BonedImmunity
scoreboard players reset * BonerGameTagBacks
scoreboard players set @a[tag=BonedImmunity] BonerGameTagBacks 1
clear @a[tag=BonedImmunity] bone[custom_data={Boned:1b}]
advancement revoke @a only camo:boner/function/boning
# unused potions
# advancement revoke @a[advancements={camo:boner/boning=true}] only camo:boner/gameplay/persistent_potion actually_got_boned
# execute as @s run say @a[tag=BonerGuy] has been boned!

