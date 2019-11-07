# HES Boss bossbar set to active
# Created by iTyro
# Reviewed August 7, 2019
#
#
# Makes bar visible and adds any non regular players ie staff, helpers, and HESfight
# bossbar value linked to HES health
#
bossbar set minecraft:HES visible true
#
bossbar set minecraft:HES players @a[team=!]
# 
execute store result bossbar minecraft:HES value run data get entity @e[limit=1,type=minecraft:zombie,tag=HES] Health
#
#
##########