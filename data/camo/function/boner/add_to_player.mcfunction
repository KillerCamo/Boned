# data merge storage camo:boner_game_data {active:0b}
scoreboard players add @a[advancements={camo:boner/boned=true},limit=1] BonerGame 1
title @a[advancements={camo:boner/boned=true}] title "Get Boned!"
data merge storage camo:boner_game_data {active_effects:[]}
execute as @a[advancements={camo:boner/boned=true}] run data modify storage camo:boner_game_data active_effects set from entity @s active_effects
function camo:boner/potion_storage with storage camo:boner_game_data {}
execute at @a[advancements={camo:boner/boned=true}] run summon armor_stand ~ ~64 ~ {NoGravity:1b,Invisible:1b,Invulnerable:1b,ShowArms:1b,Tags:[OffhandProtection],CustomName:[{"selector":"@a[tag=BonerGuy,limit=1]"}]}
execute as @e[tag=OffhandProtection] run item replace entity @s weapon.offhand from entity @a[advancements={camo:boner/boned=true},limit=1] weapon.offhand
item replace entity @a[advancements={camo:boner/boned=true}] weapon.offhand with totem_of_undying{Enchantments:[{id:knockback,lvl:5}],display:{Name:'{"text":"you got boned! bone someone else (no tag backs)"}'},CustomModelData:1}
execute store result storage camo:boner_game_data health_storage int 1 run data get entity @a[advancements={camo:boner/boned=true},limit=1] Health
function camo:boner/health_set with storage camo:boner_game_data {}
execute as @e[tag=OffhandProtection] run item replace entity @a[advancements={camo:boner/boned=true},limit=1] weapon.offhand from entity @s weapon.offhand
kill @e[tag=OffhandProtection]
tag @a[advancements={camo:boner/boned=true}] add BoneMe
schedule function camo:boner/give_item 2s append
advancement revoke @a only camo:boner/boned
#data merge storage camo:boner_game_data {active:1b}
#function camo:boner/detector