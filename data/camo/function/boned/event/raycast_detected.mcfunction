say RayCast Detected
execute unless items block ~ ~ ~ container.* bone[custom_data={Boned:1b}] if block ~ ~ ~ chest run return run execute as @s at @s run function camo:boned/check/double_chest
execute unless items block ~ ~ ~ container.* bone[custom_data={Boned:1b}] run tp ^ ^ ^0.1
execute unless items block ~ ~ ~ container.* bone[custom_data={Boned:1b}] run return run execute as @e[tag=BonedContainerRayCast] at @s run function camo:boned/event/raycast

execute if items block ~ ~ ~ contents bone[custom_data={Boned:1b}] if block ~ ~ ~ decorated_pot run return run item replace block ~ ~ ~ contents with air
execute store result storage camo:boned_data container byte 1 run data get block ~ ~ ~ Items[{id:"minecraft:bone",components:{"minecraft:custom_data":{Boned:1b}}}].Slot
execute as @s at @s run function camo:boned/check/container_clear with storage camo:boned_data