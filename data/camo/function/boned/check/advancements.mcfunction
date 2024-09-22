# used to check and give each player a fresh advancement run if the config erases it or if the player is logging on for the first time
execute as @a unless score @s BonedGameAdvancements matches 1 run function camo:boned/event/advancement_erase
