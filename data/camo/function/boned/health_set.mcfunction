$attribute @a[advancements={camo:boner/boned=true},limit=1] generic.max_health base set $(health_storage)
damage @a[advancements={camo:boner/boned=true},limit=1] 10000 generic
effect give @a[advancements={camo:boner/boned=true}] instant_health 1 9 true
effect clear @a[advancements={camo:boner/boned=true}] absorption
effect clear @a[advancements={camo:boner/boned=true}] fire_resistance
effect clear @a[advancements={camo:boner/boned=true}] resistance
effect clear @a[advancements={camo:boner/boned=true}] regeneration
schedule function camo:boner/health_revert 2t