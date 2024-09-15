function camo:boned/event/give_bone
execute as @e[type=#camo:storable_frames] if items entity @s contents bone[custom_data={Boned:1b}] run item replace entity @s contents with air