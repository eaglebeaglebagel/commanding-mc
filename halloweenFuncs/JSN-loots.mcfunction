# Jason Boss loot success function
# Created by iTyro
# October 23, 2018
# Reviewed 25, 2018
#
#
# Starts up the loot Timer, which distributes loot at 5. Timer will go on until next fight is started.
#
#
########## v INFORMATIONAL v ##########
#
#
scoreboard players add jasonLootTimer jasonLootTimer 1
#
execute if score jasonLootTimer jasonLootTimer matches 5 run tellraw @a[team=jasonFight] [{"text":"You have recieved Jason's Loot!","color":"gold","italic":"true"}]
#
execute if score jasonLootTimer jasonLootTimer matches 5 run execute at @a[team=jasonFight] run playsound minecraft:ui.toast.challenge_complete master @p ~ ~ ~ 100
#
execute if score jasonLootTimer jasonLootTimer matches 5 if entity @a[team=jasonFight] run tellraw @a [{"text":"[ ","color":"white","bold":true,"extra":[{"text":"Hall0ween Battles ","color":"dark_purple","bold":true},{"text":"] ","color":"white","bold":true},{"selector":"@a[team=jasonFight,distance=..100]","color":"white","bold":false},{"text":" just defeated Jason","color":"light_purple","bold":false}]}]
#
tellraw @a[team=jasonFight] [{"text":"[ ","color":"white","bold":"true"},{"text":"Hall0ween Battles ","color":"dark_purple","bold":"true"},{"text":"] ","color":"white","bold":"true"},{"text":"Click 
 ","color":"light_purple","bold":"false"},{"text":"here","color":"light_purple","bold":"true","underlined":"true","hoverEvent":{"action":"show_text","value":"Skidaddle to Spawn"},"clickEvent":{"action":"run_command","value":"/spawn"}},{"text":" to leave the area.","color":"light_purple","bold":"false"}]
#
#
######################################
#
#
########## v PHYSICAL LOOT v ##########
#
#
execute if score jasonLootTimer jasonLootTimer matches 5 run xp add @a[team=jasonFight,distance=..100] 3 levels
#
#execute if score jasonLootTimer jasonLootTimer matches 5 run give @a[team=jasonFight,distance=..100] minecraft:light_blue_shulker_box{display:{Name:"{\"text\":\"Kun Loot\",\"color\":\"dark_aqua\",\"italic\":\"true\"}"},BlockEntityTag:{Items:[{Slot:0b,id:"minecraft:tropical_fish",Count:4b},{Slot:1b,id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:"{\"text\":\"Sword of Peng\",\"color\":\"green\"}"},RepairCost:1000000,Enchantments:[{id:"minecraft:sharpness",lvl:7},{id:"minecraft:knockback",lvl:3},{id:"minecraft:looting",lvl:2},{id:"minecraft:sweeping",lvl:3},{id:"minecraft:unbreaking",lvl:4}]}},{Slot:2b,id:"minecraft:diamond",Count:9b},{Slot:4b,id:"minecraft:gold_ingot",Count:19b},{Slot:7b,id:"minecraft:prismarine_bricks",Count:44b},{Slot:8b,id:"minecraft:prismarine_shard",Count:30b},{Slot:10b,id:"minecraft:prismarine_crystals",Count:15b,tag:{display:{Name:"{\"text\":\"Naut Coins\",\"color\":\"gold\",\"italic\":\"true\"}",Lore:["Ancient Naut currency"]},Enchantments:[{id:"minecraft:looting",lvl:1}]}},{Slot:11b,id:"minecraft:emerald",Count:14b},{Slot:12b,id:"minecraft:iron_chestplate",Count:1b,tag:{display:{Name:"{\"text\":\"Leviathan Chestplate\",\"color\":\"aqua\"}",Lore:["The full set is quite dangerous in and out of water..."]},RepairCost:1000000,Enchantments:[{id:"minecraft:protection",lvl:7},{id:"minecraft:fire_protection",lvl:3},{id:"minecraft:thorns",lvl:1},{id:"minecraft:unbreaking",lvl:1}]}},{Slot:14b,id:"minecraft:enchanted_golden_apple",Count:3b},{Slot:15b,id:"minecraft:turtle_helmet",Count:1b},{Slot:17b,id:"minecraft:iron_ingot",Count:49b},{Slot:19b,id:"minecraft:iron_boots",Count:1b,tag:{display:{Name:"{\"text\":\"Leviathan Boots\",\"color\":\"aqua\"}",Lore:["The full set is quite dangerous in and out of water..."]},RepairCost:1000000,Enchantments:[{id:"minecraft:protection",lvl:3},{id:"minecraft:fire_protection",lvl:3},{id:"minecraft:feather_falling",lvl:1},{id:"minecraft:thorns",lvl:2},{id:"minecraft:depth_strider",lvl:5},{id:"minecraft:unbreaking",lvl:2}]}},{Slot:20b,id:"minecraft:dark_prismarine",Count:24b},{Slot:21b,id:"minecraft:written_book",Count:1b,tag:{title:"Ancient Naut Texts Vol. I",author:"Unknown",pages:["{\"text\":\"Gur Anhgf qrfpraq sebz gur fheivibef bs gur vagreangvbany erfrnepu pbzzhavgvrf va gur Nepgvp naq Nagnepgvp.Gurl unir ab prageny flfgrz bs tbireazrag, ohg ner n ybbfryl betnavmrq pbnyvgvba bs nanepuvfgf fhpu nf zrepunagf, fbyqvref naq erfrnepuref.\"}","{\"text\":\"Gur Anhgf gbbx zbfg bs gurve xabj-ubj sebz gur fpvragvfgf bs gur Rnegu'f fhesnpr naq unir orra noyr gb ubar gurfr inyhnoyr fxvyyf. Bgure pbasrqrengvbaf uvtuyl gernfher gur xabjyrqtr bs gur Anhgf naq gurve znahsnpgherq tbbqf.\"}"]}},{Slot:23b,id:"minecraft:turtle_egg",Count:8b},{Slot:25b,id:"minecraft:sponge",Count:11b},{Slot:26b,id:"minecraft:golden_apple",Count:7b}]}} 1
#
execute if score jasonLootTimer jasonLootTimer matches 5 run scoreboard players add @a[team=jasonFight,distance=..100] jasonKills 1
#
#
#######################################
#
#
########## v REMOVE OBJECTIVES v ##########
#
#
scoreboard objectives remove jasonSlowness
#
scoreboard objectives remove jtpTimer
#
scoreboard objectives remove wpumpsTimer
#
scoreboard objectives remove pumpsTimer
#
scoreboard objectives remove wpsDeathTimer
#
scoreboard objectives remove psDeathTimer
#
#
###########################################
#
#
##########