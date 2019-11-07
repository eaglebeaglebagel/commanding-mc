# Kun Boss bossbar on/off switch
# Created by iTyro
# Reviewed October 9, 2018
#
#
# Runs either bbon or bboff
#
execute if entity @e[tag=kun,distance=..200] run function kun:bbon
#
execute unless entity @e[tag=kun,distance=..200] run function kun:bboff
#
#
##########