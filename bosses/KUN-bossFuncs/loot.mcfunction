# HES Boss loot give out success/fail switch
# Created by iTyro
# August 7, 2019
# Reviewed August 7, 2019
#
#
# If HES is within 200 blocks, loot fail, if not within 200, loot success
#
execute if entity @e[tag=HES,distance=..200,type=zombie] run function HES:lootf
#
execute unless entity @e[tag=HES,distance=..200,type=zombie] run function HES:loots
#
#
##########