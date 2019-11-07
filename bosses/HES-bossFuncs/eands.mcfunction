# Kun Boss effects and summons success/fail switch
# Created by iTyro
# Reviewed October 9, 2018
#
#
# Runs either eandss or eandsf
#
execute if entity @e[tag=kun,distance=..200] run function kun:eandss
#
execute unless entity @e[tag=kun,distance=..200] run function kun:eandsf
#
#
###############