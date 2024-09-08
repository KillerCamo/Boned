tag @a[tag=BonerGuy] add ReturnBonerToMe
execute at @a[tag=BonerGuy] run summon armor_stand ~ ~64 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,ShowArms:1b,Tags:[OffhandProtection]}
execute as @e[tag=OffhandProtection] run item replace entity @s weapon.offhand from entity @a[tag=BonerGuy,limit=1] weapon.offhand
item replace entity @a[tag=BonerGuy] weapon.offhand with totem_of_undying{Enchantments:[{id:knockback,lvl:5}],display:{Name:'{"text":"you got boned! bone someone else (no tag backs)"}'},Boner:1b,CustomModelData:1}
execute store result storage camo:boner_game_data health_storage int 1 run data get entity @a[tag=BonerGuy,limit=1] Health
function camo:boner/health_set with storage camo:boner_game_data {}
execute as @e[tag=OffhandProtection] run item replace entity @a[tag=BonerGuy,limit=1] weapon.offhand from entity @s weapon.offhand
kill @e[tag=OffhandProtection]
schedule function camo:boner/give_item 2s append
tag @a[tag=BonerGuy] remove ReturnBonerToMe