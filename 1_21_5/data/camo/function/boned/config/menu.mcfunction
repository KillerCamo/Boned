scoreboard players set @a BonedGameConfig 0
tellraw @s {"text":"[BONED OPTIONS]","bold":true,"color":"aqua","hover_event":{"action":"show_text","value":["Configuration for the Boned Game. (Operators only)"]}}
tellraw @s {"text":"Aesthetics","underlined":true,"color":"aqua","hover_event":{"action":"show_text","value":["These settings change the minigame to use *magic* for aesthetic. ","\n",{"text":"Some settings may require a resource pack!","color":"red"}]}}
tellraw @s "\n"
execute if score TotemAnim BonedGameConfig matches 0 run tellraw @s ["",{"text":"Totem Animation [","color":"yellow","hover_event":{"action":"show_text","value":["When a player is hit by the bone, the player will have the bone animated on their screen like a totem!"]}},{"text":"DISABLED","color":"red","click_event":{"action":"run_command","command":"/function camo:boned/config/totem_enable"},"hover_event":{"action":"show_text","value":["When a player is hit by the bone, the player will have the bone animated on their screen like a totem!"]}},{"text":"]","color":"yellow","hover_event":{"action":"show_text","value":["When a player is hit by the bone, the player will have the bone animated on their screen like a totem!"]}}]
execute if score TotemAnim BonedGameConfig matches 1 run tellraw @s ["",{"text":"Totem Animation [","color":"yellow","hover_event":{"action":"show_text","value":["When a player is hit by the bone, the player will have the bone animated on their screen like a totem!"]}},{"text":"ENABLED","color":"green","click_event":{"action":"run_command","command":"/function camo:boned/config/totem_disable"},"hover_event":{"action":"show_text","value":["When a player is hit by the bone, the player will have the bone animated on their screen like a totem!"]}},{"text":"]","color":"yellow","hover_event":{"action":"show_text","value":["When a player is hit by the bone, the player will have the bone animated on their screen like a totem!"]}}]
execute if score BoneGrowth BonedGameConfig matches 0 run tellraw @s ["",{"text":"Bone Growth [","color":"yellow","hover_event":{"action":"show_text","value":["The bone will have a different length depending on how many times the player has been boned.","\n",{"text":"Requires resource pack!","color":"red"}]}},{"text":"DISABLED","color":"red","click_event":{"action":"run_command","command":"/function camo:boned/config/growth_enable"},"hover_event":{"action":"show_text","value":["The bone will have a different length depending on how many times the player has been boned.","\n",{"text":"Requires resource pack!","color":"red"}]}},{"text":"]","color":"yellow","hover_event":{"action":"show_text","value":["The bone will have a different length depending on how many times the player has been boned.","\n",{"text":"Requires resource pack!","color":"red"}]}}]
execute if score BoneGrowth BonedGameConfig matches 1 run tellraw @s ["",{"text":"Bone Growth [","color":"yellow","hover_event":{"action":"show_text","value":["The bone will have a different length depending on how many times the player has been boned.","\n",{"text":"Requires resource pack!","color":"red"}]}},{"text":"ENABLED","color":"green","click_event":{"action":"run_command","command":"/function camo:boned/config/growth_disable"},"hover_event":{"action":"show_text","value":["The bone will have a different length depending on how many times the player has been boned.","\n",{"text":"Requires resource pack!","color":"red"}]}},{"text":"]","color":"yellow","hover_event":{"action":"show_text","value":["The bone will have a different length depending on how many times the player has been boned.","\n",{"text":"Requires resource pack!","color":"red"}]}}]
tellraw @s "\n"
tellraw @s {"text":"Game Management","underlined":true,"color":"aqua","hover_event":{"action":"show_text","value":["Controls the current state of the game."]}}
tellraw @s "\n"
tellraw @s ["",{"text":"Random Game [","color":"yellow","hover_event":{"action":"show_text","value":["Starts the game and randomly assigns the bone to a random online player."]}},{"text":"START","color":"gold","click_event":{"action":"run_command","command":"/function camo:boned/event/start_game"},"hover_event":{"action":"show_text","value":["Starts the game and randomly assigns the bone to a random player."]}},{"text":"]","color":"yellow","hover_event":{"action":"show_text","value":["Starts the game and randomly assigns the bone to a random player."]}}]
tellraw @s ["",{"text":"Specific Game [","color":"yellow","hover_event":{"action":"show_text","value":["Starts the game and randomly assigns the bone to an online player."]}},{"text":"START","color":"gold","click_event":{"action":"suggest_command","command":"/function camo:boned/event/start_game_specific_player {player:''}"},"hover_event":{"action":"show_text","value":["Starts the game and randomly assigns the bone to an online player."]}},{"text":"]","color":"yellow","hover_event":{"action":"show_text","value":["Starts the game and randomly assigns the bone to an online player."]}}]
tellraw @s ["",{"text":"Game [","color":"yellow","hover_event":{"action":"show_text","value":["Removes the current bone user and stops the game."]}},{"text":"RESET","color":"gold","click_event":{"action":"run_command","command":"/function camo:boned/event/reset"},"hover_event":{"action":"show_text","value":["Removes the current bone user and stops the game."]}},{"text":"]","color":"yellow","hover_event":{"action":"show_text","value":["Removes the current bone user and stops the game."]}}]
tellraw @s ["",{"text":"Player [","color":"yellow","hover_event":{"action":"show_text","value":["Transfers the bone to a random online player."]}},{"text":"TRANSFER","color":"gold","click_event":{"action":"run_command","command":"/function camo:boned/event/transfer_player"},"hover_event":{"action":"show_text","value":["Transfers the bone to a random online player."]}},{"text":"]","color":"yellow","hover_event":{"action":"show_text","value":["Transfers the bone to a random online player."]}}]

tellraw @s ["",{"text":"Blacklist [","color":"yellow","hover_event":{"action":"show_text","value":["Adds a player to a blacklist that prevents them from being involved with the game."]}},{"text":"ADD","color":"green","click_event":{"action":"suggest_command","command":"/function camo:boned/config/blacklist_add {player:''}"},"hover_event":{"action":"show_text","value":["Adds a player to a blacklist that prevents them from being involved with the game."]}},{"text":"]","color":"yellow","hover_event":{"action":"show_text","value":["Adds a player to a blacklist that prevents them from being involved with the game."]}}]
tellraw @s ["",{"text":"Blacklist [","color":"yellow","hover_event":{"action":"show_text","value":["Removes a player from the blacklist."]}},{"text":"REMOVE","color":"red","click_event":{"action":"suggest_command","command":"/function camo:boned/config/blacklist_remove {player:''}"},"hover_event":{"action":"show_text","value":["Removes a player from the blacklist."]}},{"text":"]","color":"yellow","hover_event":{"action":"show_text","value":["Removes a player from the blacklist."]}}]
execute if score Tagbacks BonedGameConfig matches 1 run tellraw @s ["",{"text":"Tag Backs [","color":"yellow","hover_event":{"action":"show_text","value":["Enables tagbacks"]}},{"text":"ENABLED","color":"green","click_event":{"action":"run_command","command":"/function camo:boned/config/tagbacks_disable"},"hover_event":{"action":"show_text","value":["Enables tagbacks"]}},{"text":"]","color":"yellow","hover_event":{"action":"show_text","value":["Enables tagbacks"]}}]
execute if score Tagbacks BonedGameConfig matches 0 run tellraw @s ["",{"text":"Tag Backs [","color":"yellow","hover_event":{"action":"show_text","value":["Enables tagbacks"]}},{"text":"DISABLED","color":"red","click_event":{"action":"run_command","command":"/function camo:boned/config/tagbacks_enable"},"hover_event":{"action":"show_text","value":["Enables tagbacks"]}},{"text":"]","color":"yellow","hover_event":{"action":"show_text","value":["Enables tagbacks"]}}]
tellraw @s "\n"
tellraw @s {"text":"Administrative","underlined":true,"color":"aqua","hover_event":{"action":"show_text","value":["Controls the data of the game","\n",{"text":"Use at your own risk!","color":"red"}]}}
tellraw @s "\n"
tellraw @s ["",{"text":"Game [","color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Ends the game, bone scores, advancements, and purges storage data.","color":"red"},"\n",{"text":"Note: if an offline player has tags, those will not be erased. Data storage will also not be fully removed.","color":"red"}]}},{"text":"ERASE","color":"dark_red","click_event":{"action":"run_command","command":"/function camo:boned/event/erase"},"hover_event":{"action":"show_text","value":[{"text":"Ends the game, bone scores, advancements, and purges storage data.","color":"red"},"\n",{"text":"Note: if an offline player has tags, those will not be erased. Data storage will also not be fully removed.","color":"red"}]}},{"text":"]","color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Ends the game, bone scores, advancements, and purges storage data.","color":"red"},"\n",{"text":"Note: if an offline player has tags, those will not be erased. Data storage will also not be fully removed.","color":"red"}]}}]
tellraw @s ["",{"text":"Datapack [","color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Ends the game, removes all scoreboards, advancements, storage data, but REQUIRES AN OPERATOR TO DISABLE/REMOVE THE DATAPACK before reload.","color":"red"},"\n",{"text":"Note: if an offline player has tags, those will not be erased. Data storage will also not be fully removed.","color":"red"}]}},{"text":"UNINSTALL","color":"dark_red","click_event":{"action":"run_command","command":"/function camo:boned/event/uninstall"},"hover_event":{"action":"show_text","value":[{"text":"Ends the game, removes all scoreboards, advancements, storage data, but REQUIRES AN OPERATOR TO DISABLE/REMOVE THE DATAPACK before reload.","color":"red"},"\n",{"text":"Note: if an offline player has tags, those will not be erased. Data storage will also not be fully removed.","color":"red"}]}},{"text":"]","color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Ends the game, removes all scoreboards, advancements, storage data, but REQUIRES AN OPERATOR TO DISABLE/REMOVE THE DATAPACK before reload.","color":"red"},"\n",{"text":"Note: if an offline player has tags, those will not be erased. Data storage will also not be fully removed.","color":"red"}]}}]