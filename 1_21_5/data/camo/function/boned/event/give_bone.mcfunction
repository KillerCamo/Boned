execute unless score BoneGrowth BonedGameConfig matches 1 run return run give @a[tag=Boned] bone[custom_data={Boned:1b},minecraft:rarity=epic,minecraft:item_name='Boner',minecraft:enchantments={vanishing_curse:1,"camo:boning":5},minecraft:max_stack_size=1,lore=[["",{"text":"Hit a player to bone them!","italic":false,"color":"gray"}]],tooltip_display={hidden_components:["enchantments"]}]

execute store result storage camo:boned_data bone_growth int 1 run scoreboard players get @a[tag=Boned,limit=1] BonedGameLeaderboard
function camo:boned/event/grow_bone with storage camo:boned_data
