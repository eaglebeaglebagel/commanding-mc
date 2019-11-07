# Kun Boss start up success function
# Created by iTyro
# October 9, 2018
# Reviewed October 16, 2018
#
#
# Tellraw announces to all players that Kun has been summoned by corresponding player.
#
tellraw @a {"text":"[ ","color":"white","bold":true,"extra":[{"text":"B0ss Battles ","color":"dark_purple","bold":true},{"text":"] ","color":"white","bold":true},{"selector":"@p","color":"light_purple","bold":false},{"text":" has summoned Kun, wish them luck!","color":"light_purple","bold":false}]}
#
#
# Summon cmd for Kun
#
summon zombie 873 26 -579 {Silent:1b,CustomNameVisible:1b,Team:"boss",DeathLootTable:"kun:kunloot",PersistenceRequired:1b,CanPickUpLoot:0b,Health:600f,Tags:["kun"],CustomName:"{\"text\":\"| Kun |\",\"color\":\"dark_aqua\",\"bold\":true}",HandItems:[{id:"minecraft:trident",Count:1b,tag:{display:{Name:"{\"text\":\"Severus\",\"color\":\"gold\",\"bold\":true}",Lore:["[Exotic]"," Kun held it close..."]},RepairCost:100000,Unbreakable:0b,Enchantments:[{id:"minecraft:loyalty",lvl:1},{id:"minecraft:impaling",lvl:7},{id:"minecraft:riptide",lvl:5},{id:"minecraft:channeling",lvl:1}]}},{}],HandDropChances:[0.05F,0.85F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:15129},Unbreakable:1b,Enchantments:[{id:"minecraft:depth_strider",lvl:3}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:8402716},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:2},{id:"minecraft:thorns",lvl:4}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:147481},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1},{id:"minecraft:fire_protection",lvl:4},{id:"minecraft:thorns",lvl:8}]}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Kun\",\"color\":\"dark_purple\",\"bold\":\"true\"}",Lore:["The head of Kun!"]},Enchantments:[{id:"minecraft:protection",lvl:2},{id:"minecraft:fire_protection",lvl:10},{id:"minecraft:respiration",lvl:1},{id:"minecraft:aqua_affinity",lvl:1}],SkullOwner:{Id:"3cb62192-fef2-49ea-937b-d569b58d5ef7",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTllZTIxNjE4NWM1NmUyOTFjOGVkZjQ3NTdiMWI3NTc3ZGY1ZjNmZDRiZmQzYTBjNzYwODRjODFkMjcwIn19fQ=="}]}}}}],ArmorDropChances:[-327.67F,-327.67F,-327.67F,0.03F],Attributes:[{Name:generic.maxHealth,Base:600},{Name:generic.followRange,Base:50},{Name:generic.knockbackResistance,Base:0.8},{Name:generic.movementSpeed,Base:0.31},{Name:generic.attackDamage,Base:8},{Name:generic.armor,Base:10}]}
#
#
# Spoopy sound played upon summoning
#
playsound minecraft:entity.wither.death master @a ~ ~ ~ 100 0
#
#
########## v INCLUDE SCOREBOARD OBJECTIVES v ##########
#
#
scoreboard objectives add merfolkTimer2 dummy
#
scoreboard objectives add merfolkTimer dummy
#
scoreboard objectives add kunRainTimer dummy
#
scoreboard objectives add kunSlowness dummy
#
scoreboard objectives add kunBoomSquids dummy
#
scoreboard objectives add mertDeathTimer dummy
#
scoreboard objectives add merrDeathTimer dummy
#
#
#######################################################
#
#
##########
