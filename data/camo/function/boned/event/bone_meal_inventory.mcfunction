advancement revoke @a only camo:boned/function/bone_meal_exploit
scoreboard players reset BoneMealItem BonedGame
scoreboard players reset BoneMealPlayer BonedGame
execute store result score BoneMealPlayer BonedGame run data get entity @a[tag=Boned,limit=1] UUID[0]
execute if items entity @a[tag=Boned] player.cursor bone_meal[count=3] run return run item replace entity @a[tag=Boned] player.cursor with air

execute store result score BoneMealInventory BonedGame run clear @a[tag=Boned] bone_meal 0
execute if score BoneMealInventory BonedGame matches 3.. run return run clear @a[tag=Boned] bone_meal 3

schedule function camo:boned/event/bone_meal_search 2t

