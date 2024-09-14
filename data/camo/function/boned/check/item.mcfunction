# only run checks when a Boned person is online to prevent unnecessary ticking
execute unless entity @a[tag=Boned] run return 2
# bone inventory check value (not a return)
execute unless items entity @a[tag=Boned] player.cursor bone[custom_data={Boned:1b}] store result score BoneOnPlayer BonerGame run clear @a[tag=Boned] bone[custom_data={Boned:1b}] 0


# dupes and dropped checks
execute unless score BoneOnPlayer BonerGame matches 0..1 run return run function camo:boned/check/duplication
execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{Boned:1b}}}}] run return run function camo:boned/check/dropped

# enderchest check
execute if items entity @a[tag=Boned] enderchest.* bone[custom_data={Boned:1b}] run execute store result storage camo:boned_data ender_chest byte 1 run data get entity @a[tag=Boned,limit=1] EnderItems[{id:"minecraft:bone",components:{"minecraft:custom_data":{Boned:1b}}}].Slot
execute if items entity @a[tag=Boned] enderchest.* bone[custom_data={Boned:1b}] run return run function camo:boned/check/ender_chest with storage camo:boned_data

# final check is container check


execute if items entity @a[tag=Boned] inventory.* bone[custom_data={Boned:1b}] run return 1
execute if items entity @a[tag=Boned] hotbar.* bone[custom_data={Boned:1b}] run return 1
execute if items entity @a[tag=Boned] player.cursor bone[custom_data={Boned:1b}] run return 1
execute if items entity @a[tag=Boned] weapon.offhand bone[custom_data={Boned:1b}] run return 1
give @a[tag=Boned] bone[custom_data={Boned:1b},minecraft:custom_model_data=69,minecraft:rarity=epic,minecraft:item_name='{"text":"Boner"}',minecraft:enchantments={levels:{vanishing_curse:1},show_in_tooltip:false}]
function camo:boned/check/container_raycast