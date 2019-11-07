# All Kun particles, effects, and summons ( and sounds/special events in the future).
# Created by iTyro
# October 9, 2018
# Reviewed October 16, 2018
#
#
########## v ALL EFFECTS v ##########
#
#
#
execute at @e[tag=kun] run execute at @a[distance=..3,team=kunfight] run particle minecraft:bubble ~ ~.5 ~ .5 -.5 .5 10 100 normal
#
execute at @e[tag=kun] run effect give @a[distance=..3,team=kunfight] minecraft:slowness 1 2 false
#
execute at @e[tag=kun] run effect give @a[distance=..3,team=kunfight] minecraft:levitation 2 0 true
#
execute at @e[tag=kun] run effect give @a[distance=..3,team=kunfight] minecraft:poison 1 0 false
#
execute at @a[team=kunfight] run effect give @e[tag=kun,distance=..2] minecraft:levitation 1 1 true
#
execute at @a[team=kunfight] run effect give @e[tag=kun,distance=..2] minecraft:slow_falling 1 10
#
execute unless entity @a[distance=..60,team=kunfight] run effect give @e[tag=kun,distance=..200] minecraft:instant_damage 1 10 false
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
### v Merfolk go here v ###
#
#
# startups needs /scoreboard objectives add merfolkTimer dummy
#
scoreboard players add merfolkTimer merfolkTimer 1
#
execute if score merfolkTimer merfolkTimer matches 80 run execute at @e[tag=kun] run summon zombie ~ ~1 ~ {CustomNameVisible:0b,Team:"boss",DeathLootTable:"kun:merfolklootr",Health:35f,IsBaby:0b,Tags:["merfolkr"],CustomName:"{\"text\":\"Merfolk\"}",ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1488256},Enchantments:[{id:"minecraft:protection",lvl:1},{id:"minecraft:fire_protection",lvl:3}]}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Merfolk Skull\",\"color\":\"green\"}"},SkullOwner:{Id:"a78929fd-e681-4736-a906-bef6c364a070",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmIxNTMxYzA0ZTI1ZDdmYTY0NTc2OTgyNjg0OTFjYjg5NmQzMzAyZDI2ODg0ZmNmZGYxYTBiMmY5MmQ3N2M4ZiJ9fX0="}]}}}}],ArmorDropChances:[0.85F,0.85F,-327.67F,0.04F],Attributes:[{Name:generic.maxHealth,Base:35},{Name:generic.followRange,Base:50},{Name:generic.knockbackResistance,Base:0.1},{Name:generic.movementSpeed,Base:0.29},{Name:generic.attackDamage,Base:7}]}
#
execute if score merfolkTimer merfolkTimer matches 85 run scoreboard players set merfolkTimer merfolkTimer 0
#
# loots needs /scoreboard objectives remove merfolkTimer
#
execute unless entity @a[distance=..60,team=kunfight] run execute as @e[tag=merfolkr,distance=..200] run tp ~ ~-200 ~
#
#
###########################
#
#
### v Merfolk w/Trident v ###
#
#
# startups needs /scoreboard objectives add merfolkTimer2 dummy
#
scoreboard players add merfolkTimer2 merfolkTimer2 1
#
execute if score merfolkTimer2 merfolkTimer2 matches 200 if score kunRainTimer kunRainTimer matches 600..1900 run execute at @e[tag=kun] run summon drowned ~ ~ ~ {CustomNameVisible:0b,Team:"boss",DeathLootTable:"kun:merfolkloott",Health:35f,IsBaby:0b,Tags:["merfolkt"],CustomName:"{\"text\":\"Merfolk\"}",HandItems:[{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{id:"minecraft:impaling",lvl:3}]}},{id:"minecraft:shield",Count:1b,tag:{display:{Name:"{\"text\":\"Oceanic Shield\",\"color\":\"green\"}"},Enchantments:[{id:"minecraft:unbreaking",lvl:1},{id:"minecraft:mending",lvl:1}],BlockEntityTag:{Base:4,Patterns:[{Pattern:rs,Color:8},{Pattern:br,Color:8},{Pattern:gra,Color:6},{Pattern:mr,Color:15},{Pattern:flo,Color:12}]}}}],HandDropChances:[-327.67F,0.05F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1},{id:"minecraft:fire_protection",lvl:1},{id:"minecraft:depth_strider",lvl:1}]}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1},{id:"minecraft:fire_protection",lvl:1}]}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Enchantments:[{id:"minecraft:protection",lvl:1},{id:"minecraft:fire_protection",lvl:2}]}},{id:"minecraft:player_head",Count:1b,tag:{display:{Name:"{\"text\":\"Merfolk Guardian\",\"color\":\"green\"}"},SkullOwner:{Id:"d11d3a37-8fcb-43e6-a46f-63ebd90f659e",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzFhNzMyNTI0MDFhNmU5NDZmNjFkYmFjMGUwMjdkMTgzZTBhY2U1ODc1MmZhMTVhNjRkMjQ0OWZjZjUwODdiNyJ9fX0="}]}}}}],ArmorDropChances:[-327.67F,-327.67F,-327.67F,0.02F],Attributes:[{Name:generic.maxHealth,Base:35},{Name:generic.followRange,Base:50},{Name:generic.knockbackResistance,Base:.15},{Name:generic.movementSpeed,Base:.26},{Name:generic.attackDamage,Base:7}]}
#
execute if score merfolkTimer2 merfolkTimer2 matches 205 run scoreboard players set merfolkTimer2 merfolkTimer2 0
#
# loots needs /scoreboard objectives remove merfolkTimer2
#
execute unless entity @a[distance=..60,team=kunfight] run execute as @e[tag=merfolkt,distance=..200] run tp ~ ~-200 ~
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
### v Rain Event v ###
#
# startups needs /scoreboard objectives add kunRainTimer dummy
#
scoreboard players add kunRainTimer kunRainTimer 1
#
execute if score kunRainTimer kunRainTimer matches 600 run tellraw @a[team=kunfight,distance=..200] [{"text":"[","color":"white"},{"text":"Kun","color":"blue","bold":"true"},{"text":"] ","color":"white"},{"text":"Ah! This rain is beautiful is it not?","color":"aqua"}]
#
execute if score kunRainTimer kunRainTimer matches 600 run function kun:rainon
#
execute if score kunRainTimer kunRainTimer matches 600..1800 run effect give @e[tag=kun,distance=..200] minecraft:speed 2 0 false
#
execute if score kunRainTimer kunRainTimer matches 1900 run function kun:rainoff
#
execute if score kunRainTimer kunRainTimer matches 2150 run scoreboard players set kunRainTimer kunRainTimer 0
#
# loots needs /scoreboard objectives remove kunRainTimer
#
######################
#
#
### v Slowness Event v ###
#
# startups needs /scoreboard objectives add kunSlowness dummy
#
scoreboard players add kunSlowness kunSlowness 1
#
execute if score kunSlowness kunSlowness matches 800 run tellraw @a[team=kunfight,distance=..200] [{"text":"[","color":"white"},{"text":"Kun","color":"blue","bold":"true"},{"text":"] ","color":"white"},{"text":"Things move a little slower in the water, you know?","color":"aqua"}]
#
execute if score kunSlowness kunSlowness matches 800..1000 run effect give @a[team=kunfight,distance=..200] minecraft:slowness 2 1 false
#
execute if score kunSlowness kunSlowness matches 2000 run scoreboard players set kunSlowness kunSlowness 0
#
# loots needs /scoreboard objectives remove kunSlowness
#
##########################
#
#
### v Flyingsquid splodin' Event v ###
#
# startups needs /scoreboard objectives add kunBoomSquids dummy
#
scoreboard players add kunBoomSquids kunBoomSquids 1
#
execute if score kunBoomSquids kunBoomSquids matches 1200 run tellraw @a[team=kunfight,distance=..200] [{"text":"[","color":"white"},{"text":"Kun","color":"blue","bold":"true"},{"text":"] ","color":"white"},{"text":"I, Kun, summon splodin' flyin' squids!","color":"aqua","obfuscated":"true"}]
#
execute if score kunBoomSquids kunBoomSquids matches 1200 run execute at @e[tag=kun,distance=..200] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"-",Tags:["boomsquid"],Passengers:[{id:"minecraft:squid",Silent:1b,Invulnerable:1b,Tags:["boomsquid"]}],ActiveEffects:[{Id:14b,Amplifier:100b,Duration:2000,ShowParticles:0b}]}
#
# Summon 7 total splodin' squids
execute if score kunBoomSquids kunBoomSquids matches 1200 run execute at @e[tag=kun,distance=..200] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"-",Tags:["boomsquid"],Passengers:[{id:"minecraft:squid",Silent:1b,Invulnerable:1b,Tags:["boomsquid"]}],ActiveEffects:[{Id:14b,Amplifier:100b,Duration:2000,ShowParticles:0b}]}
execute if score kunBoomSquids kunBoomSquids matches 1200 run execute at @e[tag=kun,distance=..200] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"-",Tags:["boomsquid"],Passengers:[{id:"minecraft:squid",Silent:1b,Invulnerable:1b,Tags:["boomsquid"]}],ActiveEffects:[{Id:14b,Amplifier:100b,Duration:2000,ShowParticles:0b}]}
execute if score kunBoomSquids kunBoomSquids matches 1200 run execute at @e[tag=kun,distance=..200] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"-",Tags:["boomsquid"],Passengers:[{id:"minecraft:squid",Silent:1b,Invulnerable:1b,Tags:["boomsquid"]}],ActiveEffects:[{Id:14b,Amplifier:100b,Duration:2000,ShowParticles:0b}]}
execute if score kunBoomSquids kunBoomSquids matches 1200 run execute at @e[tag=kun,distance=..200] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"-",Tags:["boomsquid"],Passengers:[{id:"minecraft:squid",Silent:1b,Invulnerable:1b,Tags:["boomsquid"]}],ActiveEffects:[{Id:14b,Amplifier:100b,Duration:2000,ShowParticles:0b}]}
execute if score kunBoomSquids kunBoomSquids matches 1200 run execute at @e[tag=kun,distance=..200] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"-",Tags:["boomsquid"],Passengers:[{id:"minecraft:squid",Silent:1b,Invulnerable:1b,Tags:["boomsquid"]}],ActiveEffects:[{Id:14b,Amplifier:100b,Duration:2000,ShowParticles:0b}]}
execute if score kunBoomSquids kunBoomSquids matches 1200 run execute at @e[tag=kun,distance=..200] run summon bat ~ ~ ~ {Silent:1b,Invulnerable:1b,DeathLootTable:"-",Tags:["boomsquid"],Passengers:[{id:"minecraft:squid",Silent:1b,Invulnerable:1b,Tags:["boomsquid"]}],ActiveEffects:[{Id:14b,Amplifier:100b,Duration:2000,ShowParticles:0b}]}
#
#
execute if score kunBoomSquids kunBoomSquids matches 1260 run execute at @e[tag=boomsquid,distance=..200] run summon tnt ~ ~ ~ {Team:"boss"}
#
execute if score kunBoomSquids kunBoomSquids matches 1261 run tp @e[tag=boomsquid,distance=..200] ~ -50 ~
#
execute if score kunBoomSquids kunBoomSquids matches 2400 run scoreboard players set kunBoomSquids kunBoomSquids 0
#
# loots needs /scoreboard objectives remove kunBoomSquids
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
#################################################################################################################
##################################################################################################################################################################################################################################
#
#
##########