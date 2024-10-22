function camo:boned/event/give_bone
clear @a[tag=Boned] bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
give @a[tag=Boned] bundle 1