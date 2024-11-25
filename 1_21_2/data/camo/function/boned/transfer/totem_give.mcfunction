execute store result score TotemHealth BonedGame run data get entity @a[tag=BonedTransfer,limit=1] Health
execute store result score TotemMaxHealth BonedGame run attribute @a[tag=BonedTransfer,limit=1] max_health get 1
execute store result storage camo:boned_data totem_damage int 1 run scoreboard players operation TotemMaxHealth BonedGame -= TotemHealth BonedGame
execute at @a[tag=BonedTransfer] run summon armor_stand ~ ~16 ~ {Tags:[BonedOffhandProtection],Marker:1b,ShowArms:1b,Invisible:1b}
execute as @e[tag=BonedOffhandProtection,type=armor_stand] run item replace entity @s weapon.offhand from entity @a[tag=BonedTransfer,limit=1] weapon.offhand
item replace entity @a[tag=BonedTransfer,limit=1] weapon.offhand with bone[death_protection={death_effects:[{type:"minecraft:apply_effects",effects:[{duration:1,id:"minecraft:instant_health",amplifier:9,show_icon:false,show_particles:false}]}]}]
damage @a[tag=BonedTransfer,limit=1] 999999999999 generic
item replace entity @a[tag=BonedTransfer,limit=1] weapon.offhand from entity @e[tag=BonedOffhandProtection,limit=1,type=armor_stand] weapon.offhand
kill @e[tag=BonedOffhandProtection,type=armor_stand]
effect give @a[tag=BonedTransfer] blindness 5 0 true
schedule function camo:boned/transfer/totem_delay 1.75s