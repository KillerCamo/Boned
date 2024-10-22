scoreboard players set @a BonedGameConfig 0
tellraw @s {"text":"[BONED OPTIONS]","bold":true,"color":"aqua","hoverEvent":{"action":"show_text","contents":["Configuration for the Boned Game. (Operators only)"]}}
tellraw @s {"text":"Resource Pack","underlined":true,"color":"aqua","hoverEvent":{"action":"show_text","contents":["These settings change the minigame to use resource pack magic for aesthetic. ","\n",{"text":"Requires resource pack!","color":"red"}]}}
tellraw @s "\n"
execute if score TotemAnim BonedGameConfig matches 0 run tellraw @s ["",{"text":"Totem Animation [","color":"yellow","hoverEvent":{"action":"show_text","contents":["When a player is hit by the bone, the player will have the bone animated on their screen like a totem!","\n",{"text":"Requires resource pack!","color":"red"}]}},{"text":"DISABLED","color":"red","clickEvent":{"action":"run_command","value":"/function camo:boned/config/totem_enable"},"hoverEvent":{"action":"show_text","contents":["When a player is hit by the bone, the player will have the bone animated on their screen like a totem!","\n",{"text":"Requires resource pack!","color":"red"}]}},{"text":"]","color":"yellow","hoverEvent":{"action":"show_text","contents":["When a player is hit by the bone, the player will have the bone animated on their screen like a totem!","\n",{"text":"Requires resource pack!","color":"red"}]}}]
execute if score TotemAnim BonedGameConfig matches 1 run tellraw @s ["",{"text":"Totem Animation [","color":"yellow","hoverEvent":{"action":"show_text","contents":["When a player is hit by the bone, the player will have the bone animated on their screen like a totem!","\n",{"text":"Requires resource pack!","color":"red"}]}},{"text":"ENABLED","color":"green","clickEvent":{"action":"run_command","value":"/function camo:boned/config/totem_disable"},"hoverEvent":{"action":"show_text","contents":["When a player is hit by the bone, the player will have the bone animated on their screen like a totem!","\n",{"text":"Requires resource pack!","color":"red"}]}},{"text":"]","color":"yellow","hoverEvent":{"action":"show_text","contents":["When a player is hit by the bone, the player will have the bone animated on their screen like a totem!","\n",{"text":"Requires resource pack!","color":"red"}]}}]
execute if score BoneGrowth BonedGameConfig matches 0 run tellraw @s ["",{"text":"Bone Growth [","color":"yellow","hoverEvent":{"action":"show_text","contents":["The bone will have a different length depending on how many times the player has been boned.","\n",{"text":"Requires resource pack!","color":"red"}]}},{"text":"DISABLED","color":"red","clickEvent":{"action":"run_command","value":"/function camo:boned/config/growth_enable"},"hoverEvent":{"action":"show_text","contents":["The bone will have a different length depending on how many times the player has been boned.","\n",{"text":"Requires resource pack!","color":"red"}]}},{"text":"]","color":"yellow","hoverEvent":{"action":"show_text","contents":["The bone will have a different length depending on how many times the player has been boned.","\n",{"text":"Requires resource pack!","color":"red"}]}}]
execute if score BoneGrowth BonedGameConfig matches 1 run tellraw @s ["",{"text":"Bone Growth [","color":"yellow","hoverEvent":{"action":"show_text","contents":["The bone will have a different length depending on how many times the player has been boned.","\n",{"text":"Requires resource pack!","color":"red"}]}},{"text":"ENABLED","color":"green","clickEvent":{"action":"run_command","value":"/function camo:boned/config/growth_disable"},"hoverEvent":{"action":"show_text","contents":["The bone will have a different length depending on how many times the player has been boned.","\n",{"text":"Requires resource pack!","color":"red"}]}},{"text":"]","color":"yellow","hoverEvent":{"action":"show_text","contents":["The bone will have a different length depending on how many times the player has been boned.","\n",{"text":"Requires resource pack!","color":"red"}]}}]
tellraw @s "\n"
tellraw @s {"text":"Game Management","underlined":true,"color":"aqua","hoverEvent":{"action":"show_text","contents":["Controls the current state of the game."]}}
tellraw @s "\n"
tellraw @s ["",{"text":"Random Game [","color":"yellow","hoverEvent":{"action":"show_text","contents":["Starts the game and randomly assigns the bone to a random online player."]}},{"text":"START","color":"gold","clickEvent":{"action":"run_command","value":"/function camo:boned/event/start_game"},"hoverEvent":{"action":"show_text","contents":["Starts the game and randomly assigns the bone to a random player."]}},{"text":"]","color":"yellow","hoverEvent":{"action":"show_text","contents":["Starts the game and randomly assigns the bone to a random player."]}}]
tellraw @s ["",{"text":"Specific Game [","color":"yellow","hoverEvent":{"action":"show_text","contents":["Starts the game and randomly assigns the bone to an online player."]}},{"text":"START","color":"gold","clickEvent":{"action":"suggest_command","value":"/function camo:boned/event/start_game_specific_player {player:''}"},"hoverEvent":{"action":"show_text","contents":["Starts the game and randomly assigns the bone to an online player."]}},{"text":"]","color":"yellow","hoverEvent":{"action":"show_text","contents":["Starts the game and randomly assigns the bone to an online player."]}}]
tellraw @s ["",{"text":"Game [","color":"yellow","hoverEvent":{"action":"show_text","contents":["Removes the current bone user and stops the game."]}},{"text":"RESET","color":"gold","clickEvent":{"action":"run_command","value":"/function camo:boned/event/reset"},"hoverEvent":{"action":"show_text","contents":["Removes the current bone user and stops the game."]}},{"text":"]","color":"yellow","hoverEvent":{"action":"show_text","contents":["Removes the current bone user and stops the game."]}}]
tellraw @s ["",{"text":"Player [","color":"yellow","hoverEvent":{"action":"show_text","contents":["Transfers the bone to a random online player."]}},{"text":"TRANSFER","color":"gold","clickEvent":{"action":"run_command","value":"/function camo:boned/event/transfer_player"},"hoverEvent":{"action":"show_text","contents":["Transfers the bone to a random online player."]}},{"text":"]","color":"yellow","hoverEvent":{"action":"show_text","contents":["Transfers the bone to a random online player."]}}]

tellraw @s ["",{"text":"Blacklist [","color":"yellow","hoverEvent":{"action":"show_text","contents":["Adds a player to a blacklist that prevents them from being involved with the game."]}},{"text":"ADD","color":"green","clickEvent":{"action":"suggest_command","value":"/function camo:boned/config/blacklist_add {player:''}"},"hoverEvent":{"action":"show_text","contents":["Adds a player to a blacklist that prevents them from being involved with the game."]}},{"text":"]","color":"yellow","hoverEvent":{"action":"show_text","contents":["Adds a player to a blacklist that prevents them from being involved with the game."]}}]
tellraw @s ["",{"text":"Blacklist [","color":"yellow","hoverEvent":{"action":"show_text","contents":["Removes a player from the blacklist."]}},{"text":"REMOVE","color":"red","clickEvent":{"action":"suggest_command","value":"/function camo:boned/config/blacklist_remove {player:''}"},"hoverEvent":{"action":"show_text","contents":["Removes a player from the blacklist."]}},{"text":"]","color":"yellow","hoverEvent":{"action":"show_text","contents":["Removes a player from the blacklist."]}}]
execute if score Tagbacks BonedGameConfig matches 1 run tellraw @s ["",{"text":"Tag Backs [","color":"yellow","hoverEvent":{"action":"show_text","contents":["Enables tagbacks"]}},{"text":"ENABLED","color":"green","clickEvent":{"action":"run_command","value":"/function camo:boned/config/tagbacks_disable"},"hoverEvent":{"action":"show_text","contents":["Enables tagbacks"]}},{"text":"]","color":"yellow","hoverEvent":{"action":"show_text","contents":["Enables tagbacks"]}}]
execute if score Tagbacks BonedGameConfig matches 0 run tellraw @s ["",{"text":"Tag Backs [","color":"yellow","hoverEvent":{"action":"show_text","contents":["Enables tagbacks"]}},{"text":"DISABLED","color":"red","clickEvent":{"action":"run_command","value":"/function camo:boned/config/tagbacks_enable"},"hoverEvent":{"action":"show_text","contents":["Enables tagbacks"]}},{"text":"]","color":"yellow","hoverEvent":{"action":"show_text","contents":["Enables tagbacks"]}}]
tellraw @s "\n"
tellraw @s {"text":"Administrative","underlined":true,"color":"aqua","hoverEvent":{"action":"show_text","contents":["Controls the data of the game","\n",{"text":"Use at your own risk!","color":"red"}]}}
tellraw @s "\n"
tellraw @s ["",{"text":"Game [","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Ends the game, bone scores, advancements, and purges storage data.","color":"red"},"\n",{"text":"Note: if an offline player has tags, those will not be erased. Data storage will also not be fully removed.","color":"red"}]}},{"text":"ERASE","color":"dark_red","clickEvent":{"action":"run_command","value":"/function camo:boned/event/erase"},"hoverEvent":{"action":"show_text","contents":[{"text":"Ends the game, bone scores, advancements, and purges storage data.","color":"red"},"\n",{"text":"Note: if an offline player has tags, those will not be erased. Data storage will also not be fully removed.","color":"red"}]}},{"text":"]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Ends the game, bone scores, advancements, and purges storage data.","color":"red"},"\n",{"text":"Note: if an offline player has tags, those will not be erased. Data storage will also not be fully removed.","color":"red"}]}}]
tellraw @s ["",{"text":"Datapack [","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Ends the game, removes all scoreboards, advancements, storage data, but REQUIRES AN OPERATOR TO DISABLE/REMOVE THE DATAPACK before reload.","color":"red"},"\n",{"text":"Note: if an offline player has tags, those will not be erased. Data storage will also not be fully removed.","color":"red"}]}},{"text":"UNINSTALL","color":"dark_red","clickEvent":{"action":"run_command","value":"/function camo:boned/event/uninstall"},"hoverEvent":{"action":"show_text","contents":[{"text":"Ends the game, removes all scoreboards, advancements, storage data, but REQUIRES AN OPERATOR TO DISABLE/REMOVE THE DATAPACK before reload.","color":"red"},"\n",{"text":"Note: if an offline player has tags, those will not be erased. Data storage will also not be fully removed.","color":"red"}]}},{"text":"]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Ends the game, removes all scoreboards, advancements, storage data, but REQUIRES AN OPERATOR TO DISABLE/REMOVE THE DATAPACK before reload.","color":"red"},"\n",{"text":"Note: if an offline player has tags, those will not be erased. Data storage will also not be fully removed.","color":"red"}]}}]