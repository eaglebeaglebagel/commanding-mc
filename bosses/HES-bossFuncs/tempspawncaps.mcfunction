# Kun Boss Spawn Caps run active or nah
# Created by iTyro
# October 9, 2018
# Reviewed October 16, 2018
#
#
# Temp functions based on fact that new /data merge only allows for a single entity selection
# Runs either tempspawncapson or tempspawncapsoff
#
#
execute if entity @e[tag=kun,distance=..200] run function kun:tempspawncapson
#
execute unless entity @e[tag=kun,distance=..200] run function kun:tempspawncapsoff
#
#
##########