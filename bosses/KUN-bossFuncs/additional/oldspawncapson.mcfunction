# Kun Boss Spawn Caps active
# Created by iTyro
# October 9, 2018
#
########## v REGULAR MERFOLK v ##########
#
# data merge entity @e[type=zombie,tag=merfolkr,distance=..200] {Tags:["merfolkr"]}
#
# data merge entity @e[type=zombie,distance=..200,tag=merfolkr,limit=30] {Tags:["letlive","merfolkr"]}
#
# tp @e[tag=!letlive,tag=merfolkr,type=zombie,distance=..200] ~ -1 ~
#
#########################################
#
#
########## v TRIDENT MERFOLK v ##########
#
# data merge entity @e[type=drowned,tag=merfolkt,distance=..200] {Tags:["merfolkt"]}
#
# data merge entity @e[type=drowned,distance=..200,tag=merfolkt,limit=20] {Tags:["letlive","merfolkt"]}
#
# tp @e[tag=!letlive,tag=merfolkt,type=drowned,distance=..200] ~ -1 ~
#
#########################################
#
#
##########
tellraw @a[team=staff,distance=...5] {"text":"function kun:spawncapson not running atm - temporary fix is function kun:tempspawncapson"}
