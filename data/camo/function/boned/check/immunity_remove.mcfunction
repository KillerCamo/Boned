# tick check to remove the tagbacks from offline players
execute if score Tagbacks BonedGameConfig matches 0 run tag @a[tag=!BonedBlacklist] remove BonedImmunity
execute as @a[tag=!BonedBlacklist] run scoreboard players add @s BonedGameTagBacks 0
execute as @a[tag=BonedBlacklist] run scoreboard players set @s BonedGameTagBacks 1
tag @a[tag=BonedBlacklist] add BonedImmunity
execute as @a[scores={BonedGameTagBacks=0}] run tag @s remove BonedImmunity