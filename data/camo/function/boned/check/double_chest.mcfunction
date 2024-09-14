
execute if block ~ ~ ~ chest[facing=south,type=left] run tp @s ~-1 ~ ~
execute if block ~ ~ ~ chest[facing=south,type=right] run tp @s ~1 ~ ~
execute if block ~ ~ ~ chest[facing=north,type=left] run tp @s ~-1 ~ ~
execute if block ~ ~ ~ chest[facing=north,type=right] run tp @s ~1 ~ ~
execute if block ~ ~ ~ chest[facing=east,type=left] run tp @s ~ ~ ~1
execute if block ~ ~ ~ chest[facing=east,type=right] run tp @s ~ ~ ~-1
execute if block ~ ~ ~ chest[facing=west,type=left] run tp @s ~ ~ ~-1
execute if block ~ ~ ~ chest[facing=west,type=right] run tp @s ~ ~ ~1

execute as @s at @s run function camo:boned/event/raycast_detected
