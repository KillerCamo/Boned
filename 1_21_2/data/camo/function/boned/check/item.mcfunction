# only run checks when a Boned person is online to prevent unnecessary ticking
execute unless entity @a[tag=Boned] run return 2
execute if entity @a[tag=Boned,nbt={Health:0f}] run return 2
# bone dupe check value (not a return) - enabled only cuz crafting grid
execute unless items entity @a[tag=Boned] player.cursor bone[custom_data={Boned:1b}] store result score BoneOnPlayer BonedGame run clear @a[tag=Boned] bone[custom_data={Boned:1b}] 0
execute unless score BoneOnPlayer BonedGame matches 0..1 run return run function camo:boned/check/duplication

execute if items entity @a[tag=Boned] inventory.* bone[custom_data={Boned:1b}] run return 1
execute if items entity @a[tag=Boned] hotbar.* bone[custom_data={Boned:1b}] run return 1
execute if items entity @a[tag=Boned] player.cursor bone[custom_data={Boned:1b}] run return 1
execute if items entity @a[tag=Boned] weapon.offhand bone[custom_data={Boned:1b}] run return 1

# drop check -> anything below this point loads when the bone is not found on the player, the more complicated the check the further down it is.
execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{Boned:1b}}}}] run return run function camo:boned/check/dropped

# enderchest check + player crafting slot check
execute if items entity @a[tag=Boned] enderchest.* bone[custom_data={Boned:1b}] run execute store result storage camo:boned_data ender_chest byte 1 run data get entity @a[tag=Boned,limit=1] EnderItems[{id:"minecraft:bone",components:{"minecraft:custom_data":{Boned:1b}}}].Slot
execute if items entity @a[tag=Boned] enderchest.* bone[custom_data={Boned:1b}] run return run function camo:boned/check/ender_chest with storage camo:boned_data

execute if items entity @a[tag=Boned] player.crafting.* bone[custom_data={Boned:1b}] run return run function camo:boned/check/player_crafting

# bundle check

execute if items entity @a[tag=Boned] hotbar.* #minecraft:bundles[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] run return run function camo:boned/check/bundle_check
execute if items entity @a[tag=Boned] inventory.* #minecraft:bundles[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] run return run function camo:boned/check/bundle_check
execute if items entity @a[tag=Boned] player.cursor #minecraft:bundles[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] run return run function camo:boned/check/bundle_check
execute if items entity @a[tag=Boned] weapon.offhand #minecraft:bundles[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] run return run function camo:boned/check/bundle_check
# entity check
execute as @e[type=#camo:storable_containers] if items entity @s container.* bone[custom_data={Boned:1b}] run execute store result storage camo:boned_data entity_container byte 1 run data get entity @s Items[{id:"minecraft:bone",components:{"minecraft:custom_data":{Boned:1b}}}].Slot
execute as @e[type=#camo:storable_containers] if items entity @s container.* bone[custom_data={Boned:1b}] run return run function camo:boned/check/entity_container with storage camo:boned_data

execute as @e[type=#camo:storable_horses] if items entity @s horse.* bone[custom_data={Boned:1b}] run execute store result storage camo:boned_data horse_container byte 1 run data get entity @s Items[{id:"minecraft:bone",components:{"minecraft:custom_data":{Boned:1b}}}].Slot
execute as @e[type=#camo:storable_horses] if items entity @s horse.* bone[custom_data={Boned:1b}] run return run function camo:boned/check/horse_container with storage camo:boned_data

execute as @e[type=#camo:storable_frames] if items entity @s contents bone[custom_data={Boned:1b}] run return run function camo:boned/check/frame_container
# final check is container check


function camo:boned/event/give_bone
function camo:boned/check/container_raycast