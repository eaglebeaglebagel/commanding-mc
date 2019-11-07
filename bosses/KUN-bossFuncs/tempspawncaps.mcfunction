# HES Boss Spawn Caps run active or nah
# Created by iTyro
# August 7, 2019
# Reviewed August 7, 2019
#
#
# Temp functions based on fact that new /data merge only allows for a single entity selection
# Runs either tempspawncapson or tempspawncapsoff
#
#
execute if entity @e[tag=HES,distance=..200] run function HES:tempspawncapson
#
execute unless entity @e[tag=HES,distance=..200] run function HES:tempspawncapsoff
#
#
##########