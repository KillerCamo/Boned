# this check system ensures an item will be cleared from a double #camo:chests. Keep in mind however the more #camo:chestss put behind one another to fulfill a check will cause a lot more updates.
execute if block ~ ~ ~ #camo:chests[facing=south,type=left] run tp @s ~-1 ~ ~
execute if block ~ ~ ~ #camo:chests[facing=south,type=right] run tp @s ~1 ~ ~
execute if block ~ ~ ~ #camo:chests[facing=north,type=left] run tp @s ~-1 ~ ~
execute if block ~ ~ ~ #camo:chests[facing=north,type=right] run tp @s ~1 ~ ~
execute if block ~ ~ ~ #camo:chests[facing=east,type=left] run tp @s ~ ~ ~1
execute if block ~ ~ ~ #camo:chests[facing=east,type=right] run tp @s ~ ~ ~-1
execute if block ~ ~ ~ #camo:chests[facing=west,type=left] run tp @s ~ ~ ~-1
execute if block ~ ~ ~ #camo:chests[facing=west,type=right] run tp @s ~ ~ ~1
execute as @s at @s run function camo:boned/event/raycast_detected
