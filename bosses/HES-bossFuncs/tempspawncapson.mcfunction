# Kun Boss Spawn Caps active
# Created by iTyro
# October 10, 2018
#
#
######### v REGULAR MERFOLK v ##########
#
# include scoreboard objectives add merrDeathTimer dummy in startups
#
scoreboard players add @e[tag=merfolkr] merrDeathTimer 1
#
execute as @e[distance=..200,tag=merfolkr,scores={merrDeathTimer=2550}] run tp ~ ~-200 ~
#
scoreboard players reset @e[tag=merfolkr,scores={merrDeathTimer=2550}] merrDeathTimer
#
# include scoreboard objectives remove merrDeathTimer in loots
#
########################################
#
#
########## v TRIDENT MERFOLK v #########
#
# include scoreboard objectives add mertDeathTimer dummy in startups
#
scoreboard players add @e[tag=merfolkt] mertDeathTimer 1
#
execute as @e[tag=merfolkt,scores={mertDeathTimer=4100}] run tp ~ ~-200 ~
#
scoreboard players reset @e[tag=merfolkt,scores={mertDeathTimer=4100}] mertDeathTimer
#
# include scoreboard objectives remove mertDeathTimer in loots
#
########################################
#
#
##########
