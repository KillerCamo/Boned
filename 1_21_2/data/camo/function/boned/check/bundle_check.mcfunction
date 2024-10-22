function camo:boned/event/give_bone
execute store result score Bundle BonedGame run clear @a[tag=Boned] bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] white_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:white_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] light_gray_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:light_gray_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] gray_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:gray_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] black_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:black_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] brown_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:brown_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] red_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:red_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] orange_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:orange_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] yellow_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:yellow_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] lime_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:lime_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] green_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:green_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] cyan_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:cyan_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] light_blue_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:light_blue_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] blue_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:blue_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] purple_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:purple_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] magenta_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:magenta_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data
execute store result score Bundle BonedGame run clear @a[tag=Boned] pink_bundle[bundle_contents~{items:{contains:[{items:bone,components:{"minecraft:custom_data":{Boned:1b}}}]}}] 1
execute if score Bundle BonedGame matches 1 run data merge storage camo:boned_data {bundle:pink_bundle}
execute if score Bundle BonedGame matches 1 run return run function camo:boned/check/bundle_remove with storage camo:boned_data