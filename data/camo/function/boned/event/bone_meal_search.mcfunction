execute store result storage camo:boned_data bonemeal_uuid_0 int 1 run data get entity @a[tag=Boned,limit=1] UUID[0]
execute store result storage camo:boned_data bonemeal_uuid_1 int 1 run data get entity @a[tag=Boned,limit=1] UUID[1]
execute store result storage camo:boned_data bonemeal_uuid_2 int 1 run data get entity @a[tag=Boned,limit=1] UUID[2]
execute store result storage camo:boned_data bonemeal_uuid_3 int 1 run data get entity @a[tag=Boned,limit=1] UUID[3]
execute as @n[type=item,nbt={Item:{id:"minecraft:bone_meal"}}] store result score BoneMealItem BonedGame run data get entity @s Thrower[0]
execute if score BoneMealPlayer BonedGame = BoneMealItem BonedGame run function camo:boned/event/bone_meal_kill with storage camo:boned_data
