# tick check to remove the tagbacks from offline players
execute as @a run scoreboard players add @s BonerGameTagBacks 0
execute as @a if score @s BonerGameTagBacks matches 0 run tag @s remove ImmuneToBoner