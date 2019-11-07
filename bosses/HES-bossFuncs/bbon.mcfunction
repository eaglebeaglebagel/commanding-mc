# Kun Boss bossbar set to active
# Created by iTyro
# Reviewed October 9, 2018
#
#
# Makes bar visible and adds any non regular players ie staff, helpers, and kunfight
# bossbar value linked to Kuns health
#
bossbar set minecraft:kun visible true
#
bossbar set minecraft:kun players @a[team=!]
# 
execute store result bossbar minecraft:kun value run data get entity @e[limit=1,type=minecraft:zombie,tag=kun] Health
#
#
##########