# Kun Boss Spawn Caps active
# Created by iTyro
# Reviewed August 7, 2019
#
#
######### v MINION 1 v ##########
#
# include scoreboard objectives add minion1DeathTimer dummy in startups
#
scoreboard players add @e[tag=minion1] minion1DeathTimer 1
#
execute as @e[distance=..200,tag=minion1,scores={minion1DeathTimer=2550}] run tp ~ ~-200 ~
#
scoreboard players reset @e[tag=minion1,scores={minion1DeathTimer=2550}] minion1DeathTimer
#
# include scoreboard objectives remove minion1DeathTimer in loots
#
########################################
#
#
########## v MINION 2 v #########
#
# include scoreboard objectives add minion2DeathTimer dummy in startups
#
scoreboard players add @e[tag=minion2] minion2DeathTimer 1
#
execute as @e[tag=minion2,scores={minion2DeathTimer=4100}] run tp ~ ~-200 ~
#
scoreboard players reset @e[tag=minion2,scores={minion2DeathTimer=4100}] minion2DeathTimer
#
# include scoreboard objectives remove minion2DeathTimer in loots
#
########################################
#
#
##########
