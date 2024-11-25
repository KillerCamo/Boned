execute store result score TotemHealth BonedGame run data get entity @a[tag=BonedTransfer,limit=1] Health
execute store result score TotemMaxHealth BonedGame run attribute @a[tag=BonedTransfer,limit=1] minecraft:generic.max_health get 1
#execute store result score TotemAbsorption BonedGame run data get entity @a[tag=BonedTransfer,limit=1] AbsorptionAmount
#execute store result score TotemMaxAbsorption BonedGame run attribute @a[tag=BonedTransfer,limit=1] minecraft:generic.max_absorption get 1
execute store result storage camo:boned_data totem_damage int 1 run scoreboard players operation TotemMaxHealth BonedGame -= TotemHealth BonedGame
#execute store result storage camo:boned_data totem_absorption int 1 run scoreboard players operation TotemMaxAbsorption BonedGame -= TotemAbsorption BonedGame
execute at @a[tag=BonedTransfer] run summon armor_stand ~ ~16 ~ {Tags:[BonedOffhandProtection],Marker:1b,ShowArms:1b,Invisible:1b}
execute as @a[tag=BonedTransfer] run function camo:boned/transfer/potion_transfer_prep with entity @a[tag=BonedTransfer,limit=1]
execute as @e[tag=BonedOffhandProtection,type=armor_stand] run item replace entity @s weapon.offhand from entity @a[tag=BonedTransfer,limit=1] weapon.offhand
item replace entity @a[tag=BonedTransfer,limit=1] weapon.offhand with totem_of_undying[custom_model_data=1]
damage @a[tag=BonedTransfer,limit=1] 999999999999 generic
item replace entity @a[tag=BonedTransfer,limit=1] weapon.offhand from entity @e[tag=BonedOffhandProtection,limit=1,type=armor_stand] weapon.offhand
kill @e[tag=BonedOffhandProtection,type=armor_stand]
effect give @a[tag=BonedTransfer] instant_health 1 9 true
effect clear @a[tag=BonedTransfer] absorption
effect clear @a[tag=BonedTransfer] fire_resistance
effect clear @a[tag=BonedTransfer] regeneration
effect give @a[tag=BonedTransfer] blindness 5 0 true
function camo:boned/transfer/potion_transfer_start
schedule function camo:boned/transfer/totem_delay 1.75s