# checks if the bone stick is in the players inventory
# separate into multiple return statements vvvvvvvvvvvv
execute if items entity @a[tag=Boned] inventory.* bone[custom_data={Boned:1b}] run execute unless items entity @a[tag=Boned] weapon.offhand bone[custom_data={Boned:1b}] run execute unless items entity @a[tag=Boned] hotbar.* bone[custom_data={Boned:1b}] run return run say boned on player
clear @a[tag=Boned] bone[custom_data={Boned:1b}]

kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{Boned:1b}}}}]
