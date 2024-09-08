tag @a[advancements={camo:boner/boning=true}] remove BonerGuy
scoreboard objectives remove BonerGameTagBacks
scoreboard objectives add BonerGameTagBacks dummy
scoreboard players set @a[advancements={camo:boner/boning=true}] BonerGameTagBacks 1
advancement revoke @a[advancements={camo:boner/boning=true}] only camo:boner/gameplay/persistent_potion actually_got_boned
# execute as @s run say @a[tag=BonerGuy] has been boned!
clear @a[advancements={camo:boner/boning=true}] bone{Enchantments:[{id:knockback,lvl:5}],display:{Name:'{"text":"you got boned! bone someone else (no tag backs)"}'},Boner:1b}
advancement revoke @a only camo:boner/boning