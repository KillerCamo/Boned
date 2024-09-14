execute if block ~ ~ ~ #camo:storable_containers run return run execute as @s run function camo:boned/event/raycast_detected
execute if score @s BonerGame matches 0 run return fail
tp @s ^ ^ ^0.1
scoreboard players remove @s BonerGame 1
execute as @e[tag=BonedContainerRayCast] at @s run function camo:boned/event/raycast
