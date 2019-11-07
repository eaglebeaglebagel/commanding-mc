# HES Boss effects and summons success/fail switch
# Created by iTyro
# Reviewed August 7, 2019
#
#
# Runs either eandss or eandsf
#
execute if entity @e[tag=HES,distance=..200] run function HES:eandss
#
execute unless entity @e[tag=HES,distance=..200] run function HES:eandsf
#
#
###############