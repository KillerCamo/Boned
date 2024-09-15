function camo:boned/event/give_bone
execute if items entity @a[tag=Boned] player.crafting.0 bone[custom_data={Boned:1b}] run return run item replace entity @a[tag=Boned,limit=1] player.crafting.0 with air
execute if items entity @a[tag=Boned] player.crafting.1 bone[custom_data={Boned:1b}] run return run item replace entity @a[tag=Boned,limit=1] player.crafting.1 with air
execute if items entity @a[tag=Boned] player.crafting.2 bone[custom_data={Boned:1b}] run return run item replace entity @a[tag=Boned,limit=1] player.crafting.2 with air
execute if items entity @a[tag=Boned] player.crafting.3 bone[custom_data={Boned:1b}] run return run item replace entity @a[tag=Boned,limit=1] player.crafting.3 with air
