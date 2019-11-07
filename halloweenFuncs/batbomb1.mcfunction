# Halloween event batbomb controller
# Created by iTyro
# October 27, 2018
#
#
execute as @e[tag=batbomb] run scoreboard players add @s batbomb 1
#
execute as @e[tag=batbomb] at @s if score @s batbomb matches 1 run summon bat ~ ~ ~ {Tags:["batbomb2"],CustomName:"{\"text\":\"Bat Bomb\"}"}
execute as @e[tag=batbomb] at @s if score @s batbomb matches 1 run summon bat ~ ~ ~ {Tags:["batbomb2"],CustomName:"{\"text\":\"Bat Bomb\"}"}
execute as @e[tag=batbomb] at @s if score @s batbomb matches 1 run summon bat ~ ~ ~ {Tags:["batbomb2"],CustomName:"{\"text\":\"Bat Bomb\"}"}
execute as @e[tag=batbomb] at @s if score @s batbomb matches 1 run summon bat ~ ~ ~ {Tags:["batbomb2"],CustomName:"{\"text\":\"Bat Bomb\"}"}
execute as @e[tag=batbomb] at @s if score @s batbomb matches 1 run summon bat ~ ~ ~ {Tags:["batbomb2"],CustomName:"{\"text\":\"Bat Bomb\"}"}
execute as @e[tag=batbomb] at @s if score @s batbomb matches 1 run summon bat ~ ~ ~ {Tags:["batbomb2"],CustomName:"{\"text\":\"Bat Bomb\"}"}
execute as @e[tag=batbomb] at @s if score @s batbomb matches 1 run summon bat ~ ~ ~ {Tags:["batbomb2"],CustomName:"{\"text\":\"Bat Bomb\"}"}
execute as @e[tag=batbomb] at @s if score @s batbomb matches 1 run summon bat ~ ~ ~ {Tags:["batbomb2"],CustomName:"{\"text\":\"Bat Bomb\"}"}
execute as @e[tag=batbomb] at @s if score @s batbomb matches 1 run summon bat ~ ~ ~ {Tags:["batbomb2"],CustomName:"{\"text\":\"Bat Bomb\"}"}
execute as @e[tag=batbomb] at @s if score @s batbomb matches 1 run summon bat ~ ~ ~ {Tags:["batbomb2"],CustomName:"{\"text\":\"Bat Bomb\"}"}
#
execute as @e[tag=batbomb2] run scoreboard players add @s batbomb 1
#
execute as @e[tag=batbomb,scores={batbomb=46}] at @s run particle minecraft:dragon_breath ~ ~ ~ .1 .1 .1 .07 8 force
execute as @e[tag=batbomb2,scores={batbomb=45}] at @s run particle minecraft:dragon_breath ~ ~ ~ .1 .1 .1 .07 8 force
#
execute as @e[tag=batbomb,scores={batbomb=46}] at @s run tp @s ~ ~-200 ~
execute as @e[tag=batbomb2,scores={batbomb=45}] at @s run tp @s ~ ~-200 ~
#
#
##########