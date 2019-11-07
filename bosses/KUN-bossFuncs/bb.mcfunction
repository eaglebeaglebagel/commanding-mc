# HES Boss bossbar on/off switch
# Created by iTyro
# Reviewed August 7, 2019
#
#
# Runs either bbon or bboff
#
execute if entity @e[tag=HES,distance=..200] run function HES:bbon
#
execute unless entity @e[tag=HES,distance=..200] run function HES:bboff
#
#
##########