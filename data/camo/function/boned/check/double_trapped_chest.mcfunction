# this check system ensures an item will be cleared from a double trapped_chest. Keep in mind however the more trapped_chests put behind one another to fulfill a check will cause a lot more updates.
execute if block ~ ~ ~ trapped_chest[facing=south,type=left] run tp @s ~-1 ~ ~
execute if block ~ ~ ~ trapped_chest[facing=south,type=right] run tp @s ~1 ~ ~
execute if block ~ ~ ~ trapped_chest[facing=north,type=left] run tp @s ~-1 ~ ~
execute if block ~ ~ ~ trapped_chest[facing=north,type=right] run tp @s ~1 ~ ~
execute if block ~ ~ ~ trapped_chest[facing=east,type=left] run tp @s ~ ~ ~1
execute if block ~ ~ ~ trapped_chest[facing=east,type=right] run tp @s ~ ~ ~-1
execute if block ~ ~ ~ trapped_chest[facing=west,type=left] run tp @s ~ ~ ~-1
execute if block ~ ~ ~ trapped_chest[facing=west,type=right] run tp @s ~ ~ ~1
execute as @s at @s run function camo:boned/event/raycast_detected
