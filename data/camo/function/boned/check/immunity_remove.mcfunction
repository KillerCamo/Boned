# tick check to remove the tagbacks from offline players
execute as @a[tag=!BonedBlacklist] run scoreboard players add @s BonerGameTagBacks 0
execute as @a[tag=BonedBlacklist] run scoreboard players add @s BonerGameTagBacks 1
tag @a[tag=BonedBlacklist] add BonedImmunity
execute as @a if score @s BonerGameTagBacks matches 0 run tag @s remove ImmuneToBoner