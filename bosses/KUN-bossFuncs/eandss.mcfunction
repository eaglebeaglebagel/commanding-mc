# All HES particles, effects, summons, sounds, special events, etc.
# Created by iTyro
# Reviewed August 7, 2019
#
#
########## v ALL EFFECTS v ##########
#
#
#
execute at @e[tag=HES] run execute at @a[distance=..3,team=HESfight] run particle minecraft:bubble ~ ~.5 ~ .5 -.5 .5 10 100 normal
#
execute at @e[tag=HES] run effect give @a[distance=..3,team=HESfight] minecraft:slowness 1 2 false
#
execute at @e[tag=HES] run effect give @a[distance=..3,team=HESfight] minecraft:levitation 2 0 true
#
execute at @e[tag=HES] run effect give @a[distance=..3,team=HESfight] minecraft:poison 1 0 false
#
execute at @a[team=HESfight] run effect give @e[tag=HES,distance=..2] minecraft:levitation 1 1 true
#
execute at @a[team=HESfight] run effect give @e[tag=HES,distance=..2] minecraft:slow_falling 1 10
#
execute unless entity @a[distance=..60,team=HESfight] run effect give @e[tag=HES,distance=..200] minecraft:instant_damage 1 10 false
#
#
#
#################################################################################################################
#################################################################################################################
#################################################################################################################
#
#
#
########## v MINIONS v ##########
#
#
#
### v Minion 1 v ###
#
#
# startups needs /scoreboard objectives add minion1Timer dummy
#
scoreboard players add minion1Timer minion1Timer 1
#
execute if score minion1Timer minion1Timer matches 80 run execute at @e[tag=HES] run summon zombie ~ ~1 ~ {CustomNameVisible:0b,Team:"boss",DeathLootTable:"HES:merfolklootr",Health:35f,IsBaby:0b,Tags:["minion1"],CustomName:"{\"text\":\"Merfolk\"}",ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1488256},Enchantments:[{id:"minecraft:protection",lvl:1},{id:"minecraft:fire_protection",lvl:3}]}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Merfolk Skull\",\"color\":\"green\"}"},SkullOwner:{Id:"a78929fd-e681-4736-a906-bef6c364a070",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmIxNTMxYzA0ZTI1ZDdmYTY0NTc2OTgyNjg0OTFjYjg5NmQzMzAyZDI2ODg0ZmNmZGYxYTBiMmY5MmQ3N2M4ZiJ9fX0="}]}}}}],ArmorDropChances:[0.85F,0.85F,-327.67F,0.04F],Attributes:[{Name:generic.maxHealth,Base:35},{Name:generic.followRange,Base:50},{Name:generic.knockbackResistance,Base:0.1},{Name:generic.movementSpeed,Base:0.29},{Name:generic.attackDamage,Base:7}]}
#
execute if score minion1Timer minion1Timer matches 85 run scoreboard players set minion1Timer minion1Timer 0
#
# loots needs /scoreboard objectives remove minion1Timer
#
execute unless entity @a[distance=..60,team=HESfight] run execute as @e[tag=minion1,distance=..200] run tp ~ ~-200 ~
#
#
###########################
#
#
### v Minion 2 v ###
#
#
# startups needs /scoreboard objectives add minion2Timer dummy
#
scoreboard players add minion2Timer minion2Timer 1
#
execute if score minion2Timer minion2Timer matches 200 if score HESTpTimer HESTpTimer matches 600..1900 run execute at @e[tag=HES] run summon drowned ~ ~ ~ {CustomNameVisible:0b,Team:"boss",DeathLootTable:"HES:merfolkloott",Health:35f,IsBaby:0b,Tags:["merfolkt"],CustomName:"{\"text\":\"Merfolk\"}",HandItems:[{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"minecraft:impaling",lvl:3}]}},{id:"minecraft:shield",Count:1b,tag:{display:{Name:"{\"text\":\"Oceanic Shield\",\"color\":\"green\"}"},Enchantments:[{id:"minecraft:unbreaking",lvl:1},{id:"minecraft:mending",lvl:1}],BlockEntityTag:{Base:4,Patterns:[{Pattern:rs,Color:8},{Pattern:br,Color:8},{Pattern:gra,Color:6},{Pattern:mr,Color:15},{Pattern:flo,Color:12}]}}}],HandDropChances:[-327.67F,0.05F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1},{id:"minecraft:fire_protection",lvl:1},{id:"minecraft:depth_strider",lvl:1}]}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1},{id:"minecraft:fire_protection",lvl:1}]}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1},{id:"minecraft:fire_protection",lvl:2}]}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Merfolk Guardian\",\"color\":\"green\"}"},SkullOwner:{Id:"d11d3a37-8fcb-43e6-a46f-63ebd90f659e",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzFhNzMyNTI0MDFhNmU5NDZmNjFkYmFjMGUwMjdkMTgzZTBhY2U1ODc1MmZhMTVhNjRkMjQ0OWZjZjUwODdiNyJ9fX0="}]}}}}],ArmorDropChances:[-327.67F,-327.67F,-327.67F,0.02F],Attributes:[{Name:generic.maxHealth,Base:35},{Name:generic.followRange,Base:50},{Name:generic.knockbackResistance,Base:.15},{Name:generic.movementSpeed,Base:.26},{Name:generic.attackDamage,Base:7}]}
#
execute if score minion2Timer minion2Timer matches 205 run scoreboard players set minion2Timer minion2Timer 0
#
# loots needs /scoreboard objectives remove minion2Timer
#
execute unless entity @a[distance=..60,team=HESfight] run execute as @e[tag=merfolkt,distance=..200] run tp ~ ~-200 ~
#
#
##############################
#
#
#
#################################################################################################################
##################################################################################################################################################################################################################################
#
#
#
########### v MINION EFFECTS v ##########
#
#
#
# EMPTY
#
#
#
#################################################################################################################
##################################################################################################################################################################################################################################
#
#
#
########## v EVENTS v ##########
#
#
#
### v TP Event v ###
#
# startups needs /scoreboard objectives add HESTpTimer dummy
#
scoreboard players add HESTpTimer HESTpTimer 1
#
execute if score HESTpTimer HESTpTimer matches 600 run tellraw @a[team=HESfight,distance=..200] [{"text":"[","color":"white"},{"text":"Hitler's Son","color":"dark_red","bold":"true"},{"text":"] ","color":"white"},{"text":"Hallo, Rosa! Sterben!","color":"red"}]
#
execute if score HESTpTimer HESTpTimer matches 600 run tp @e[tag=HES,distance=..200] @r[tag=HESfight,distance=..200]
#
execute if score HESTpTimer HESTpTimer matches 600..660 run effect give @e[tag=HES,distance=..200] minecraft:speed 2 0 false
#
#execute if score HESTpTimer HESTpTimer matches 1900 run function HES:rainoff
#
execute if score HESTpTimer HESTpTimer matches 1000 run scoreboard players set HESTpTimer HESTpTimer 0
#
# loots needs /scoreboard objectives remove HESTpTimer
#
######################
#
#
### v Slowness Event v ###
#
# startups needs /scoreboard objectives add HESSlowness dummy
#
scoreboard players add HESSlowness 1
#
execute if score HESSlowness HESSlowness matches 800 run tellraw @a[team=HESfight,distance=..200] [{"text":"[","color":"white"},{"text":"Hitler's Son","color":"dark_red","bold":"true"},{"text":"] ","color":"white"},{"text":"HAHA, Die Kraft, die Zeit zu verlangsamen, ist großartig! HAHAHA","color":"red"}]
#
execute if score HESSlowness HESSlowness matches 800..875 run effect give @a[team=HESfight,distance=..200] minecraft:slowness 2 10 false
#
execute if score HESSlowness HESSlowness matches 900 run scoreboard players set HESSlowness 0
#
# loots needs /scoreboard objectives remove HESSlowness
#
##########################
#
#
### v Flyingbat splodin' Event v ###
#
# startups needs /scoreboard objectives add HESboombats dummy
#
scoreboard players add HESboombats HESboombats 1
#
execute if score HESboombats HESboombats matches 1200 run tellraw @a[team=HESfight,distance=..200] [{"text":"[","color":"white"},{"text":"Hitler's Son","color":"dark_red","bold":"true"},{"text":"] ","color":"white"},{"text":"Noob wurde faul und wiederverwendet und alter Mechaniker! Auf Wiedersehen! HAHA!","color":"red","obfuscated":"false"}]
#
execute if score HESboombats HESboombats matches 1200 run execute at @e[tag=HES,distance=..200] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"-",Tags:["boombat"],Passengers:[{id:"minecraft:bat",Silent:1b,Invulnerable:1b,Tags:["boombat"]}],ActiveEffects:[{Id:14b,Amplifier:100b,Duration:2000,ShowParticles:0b}]}
#
# Summon 7 total splodin' squids
execute if score HESboombats HESboombats matches 1200 run execute at @e[tag=HES,distance=..200] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"-",Tags:["boombat"],Passengers:[{id:"minecraft:bat",Silent:1b,Invulnerable:1b,Tags:["boombat"]}],ActiveEffects:[{Id:14b,Amplifier:100b,Duration:2000,ShowParticles:0b}]}
execute if score HESboombats HESboombats matches 1200 run execute at @e[tag=HES,distance=..200] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"-",Tags:["boombat"],Passengers:[{id:"minecraft:bat",Silent:1b,Invulnerable:1b,Tags:["boombat"]}],ActiveEffects:[{Id:14b,Amplifier:100b,Duration:2000,ShowParticles:0b}]}
execute if score HESboombats HESboombats matches 1200 run execute at @e[tag=HES,distance=..200] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"-",Tags:["boombat"],Passengers:[{id:"minecraft:bat",Silent:1b,Invulnerable:1b,Tags:["boombat"]}],ActiveEffects:[{Id:14b,Amplifier:100b,Duration:2000,ShowParticles:0b}]}
execute if score HESboombats HESboombats matches 1200 run execute at @e[tag=HES,distance=..200] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"-",Tags:["boombat"],Passengers:[{id:"minecraft:bat",Silent:1b,Invulnerable:1b,Tags:["boombat"]}],ActiveEffects:[{Id:14b,Amplifier:100b,Duration:2000,ShowParticles:0b}]}
execute if score HESboombats HESboombats matches 1200 run execute at @e[tag=HES,distance=..200] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"-",Tags:["boombat"],Passengers:[{id:"minecraft:bat",Silent:1b,Invulnerable:1b,Tags:["boombat"]}],ActiveEffects:[{Id:14b,Amplifier:100b,Duration:2000,ShowParticles:0b}]}
execute if score HESboombats HESboombats matches 1200 run execute at @e[tag=HES,distance=..200] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"-",Tags:["boombat"],Passengers:[{id:"minecraft:bat",Silent:1b,Invulnerable:1b,Tags:["boombat"]}],ActiveEffects:[{Id:14b,Amplifier:100b,Duration:2000,ShowParticles:0b}]}
#
#
execute if score HESboombats HESboombats matches 1260 run execute at @e[tag=boombat,distance=..200] run summon tnt ~ ~ ~ {Team:"boss"}
#
execute if score HESboombats HESboombats matches 1261 run tp @e[tag=boombat,distance=..200] ~ -50 ~
#
execute if score HESboombats HESboombats matches 1800 run scoreboard players set HESboombats HESboombats 0
#
# loots needs /scoreboard objectives remove HESboombats
#
#######################################
#
#
#
#################################################################################################################
##################################################################################################################################################################################################################################
#
#
#
########## v ADDITIONAL FUNCTIONS v ##########
#
#
#
# EMPTY
#
#
#
#################################################################################################################
##################################################################################################################################################################################################################################
#
#
#
########## v INCLUDE SCOREBOARD OBJECTIVES v ##########
#
#
scoreboard objectives add minion2Timer dummy
#
scoreboard objectives add minion1Timer dummy
#
scoreboard objectives add HESTpTimer dummy
#
scoreboard objectives add HESSlowness dummy
#
scoreboard objectives add HESboombats dummy
#
scoreboard objectives add minion1DeathTimer dummy
#
scoreboard objectives add minion2DeathTimer dummy
#
#
#################################################################################################################
##################################################################################################################################################################################################################################
#
#
##########