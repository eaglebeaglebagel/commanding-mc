# HES Boss start up success/fail switch
# Created by iTyro
# August 7, 2019
# Reviewed August 7, 2019
#
#
# Runs either startups or startupf depending upon whether or not HES is present within 200 blocks
#
#
execute if entity @e[tag=HES,distance=..200] run function HES:startupf
#
execute unless entity @e[tag=HES,distance=..200] run function HES:startups
#
#
# Warning info for whoever hits button
#
#
tellraw @a[distance=..10] {"text":"[ ","color":"white","bold":true,"extra":[{"text":"WARNING ","color":"gold","bold":true},{"text":"] ","color":"white","bold":true},{"text":"Please ensure you are familiar with all B0SS Battle info before you continue.","color":"yellow","bold":false}]}
#
#
##########