# Kun Boss start up success/fail switch
# Created by iTyro
# October 9, 2018
# Reviewed October 16, 2018
#
#
# Runs either startups or startupf depending upon whether or not kun is present within 200 blocks
#
#
execute if entity @e[tag=kun,distance=..200] run function kun:startupf
#
execute unless entity @e[tag=kun,distance=..200] run function kun:startups
#
#
# Warning info for whoever hits button
#
#
tellraw @a[distance=..10] {"text":"[ ","color":"white","bold":true,"extra":[{"text":"WARNING ","color":"gold","bold":true},{"text":"] ","color":"white","bold":true},{"text":"This is an early version of B0ss Battles and is likely to have bugs. Participation is voluntary.","color":"yellow","bold":false}]}
#
#
##########
