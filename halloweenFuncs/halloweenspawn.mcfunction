# Halloween event pumpkin zombie spawner
# Created by iTyro
# October 27, 2018
#
#
scoreboard objectives add halloweenSpawn dummy
scoreboard players add halloweenSpawn halloweenSpawn 1
#
execute if score halloweenSpawn halloweenSpawn matches 1000 run execute at @e[tag=halloweenSpawner2,sort=random,limit=1] run summon zombie ~ ~ ~ {DeathLootTable:"halloween:rpumpzom",Tags:["halloweenZom"],ArmorItems:[{},{},{},{id:"minecraft:jack_o_lantern",Count:1b}],ArmorDropChances:[0.85F,0.85F,0.85F,-327.67F]}
execute if score halloweenSpawn halloweenSpawn matches 1000 run execute at @e[tag=halloweenSpawner2,sort=random,limit=1] run summon skeleton ~ ~ ~ {DeathLootTable:"halloween:rpumpzom",Tags:["halloweenZom"],ArmorItems:[{},{},{},{id:"minecraft:jack_o_lantern",Count:1b}],ArmorDropChances:[0.85F,0.85F,0.85F,-327.67F]}
#
execute if score halloweenSpawn halloweenSpawn matches 1005 run scoreboard players set halloweenSpawn halloweenSpawn 0
#
#
##########