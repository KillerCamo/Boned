
kill @e[tag=EffectRestoreArrow]
$execute at @a[advancements={camo:boner/boned=true}] run summon arrow ~ ~ ~ {Tags:[EffectRestoreArrow],CustomPotionColor:16383998,custom_potion_effects:$(active_effects),life:-1}
execute if entity @e[tag=EffectRestoreArrow] run schedule function camo:boner/potion_tp 3s