say raycast container!
execute at @a[tag=Boned] run summon area_effect_cloud ~ ~ ~ {Tags:[BonedContainerRayCast,BonedRaycast1]}
execute at @a[tag=Boned] run tp @e[tag=BonedContainerRayCast,tag=BonedRaycast1] ~ ~1.5 ~ ~ ~ 
scoreboard players set @e[tag=BonedContainerRayCast] BonedGame 128
execute as @e[tag=BonedContainerRayCast] at @s run function camo:boned/event/raycast