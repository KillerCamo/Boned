function camo:boned/event/give_bone
$execute as @e[type=#camo:storable_horses] if items entity @s horse.* bone[custom_data={Boned:1b}] run item replace entity @s horse.$(horse_container) with air