# Kun Boss loot give out success/fail switch
# Created by iTyro
# October 9, 2018
# Reviewed October 16, 2018
#
#
# If Kun is within 200 blocks, loot fail, if not within 200, loot success
#
execute if entity @e[tag=kun,distance=..200,type=zombie] run function kun:lootf
#
execute unless entity @e[tag=kun,distance=..200,type=zombie] run function kun:loots
#
#
##########