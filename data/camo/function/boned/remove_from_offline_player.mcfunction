$clear $(offline_player) bone{Boner:1b}
scoreboard players set @a BonerGameTagBacks 0
$scoreboard players set $(offline_player) BonerGameTagBacks 1
$tag $(offline_player) remove BonerGuy
$advancement revoke $(offline_player) only camo:boner/gameplay/persistent_potion actually_got_boned
$execute if entity @a[tag=!BonerGuy,name="$(offline_player)"] run data merge storage camo:boner_game_data {offline_player:"N/A"}