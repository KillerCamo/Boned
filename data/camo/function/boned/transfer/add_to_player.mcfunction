# adds the bone stick to the new player
tag @a[advancements={camo:boned/function/boned=true}] add BonedTransfer
scoreboard players add @a[tag=BonedTransfer] BonerGame 1
title @a[tag=BonedTransfer] title "Get Boned!"
execute at @a[tag=BonedTransfer] run playsound item.totem.use player @a[tag=BonedTransfer] ~ ~ ~ 1
effect give @a[tag=BonedTransfer] blindness 5 0 true
give @a[tag=BonedTransfer] bone[custom_data={Boned:1b},minecraft:custom_model_data=69,minecraft:rarity=epic,minecraft:item_name='{"text":"Boner"}',minecraft:enchantments={levels:{vanishing_curse:1},show_in_tooltip:false}]
advancement revoke @a only camo:boned/function/boned
tag @a[tag=BonedTransfer] add Boned
return run tag @a[tag=BonedTransfer] remove BonedTransfer
# unused potion effect data
#data merge storage camo:boner_game_data {active_effects:[]}
#execute as @a[advancements={camo:boner/boned=true}] run data modify storage camo:boner_game_data active_effects set from entity @s active_effects
#function camo:boner/potion_storage with storage camo:boner_game_data {}

# for old totem data
#tag @a[advancements={camo:boner/function/boned=true}] add BoneMe
#schedule function camo:boner/give_item 2s append

