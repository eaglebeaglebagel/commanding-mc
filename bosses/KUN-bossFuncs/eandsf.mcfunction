# HES Boss effects and summons fail function
# Created by iTyro
# Reviewed August 7, 2019
#
#
# Filler function - used to handle things that need to be done when boss isnt present 
# (ie,killing minions to reduce lag )
#
tellraw @p[distance=..5] {"text":"[bbFunction] eandsf file currently removing @e[tag=MINION1,tag=MINION2,distance=..200"}
#
tp @e[tag=MINION1,distance=..200] 1 -200 1
tp @e[tag=MINION2,distance=..200] 1 -200 1
#
### NEEDS MOVED EANDSS AND SPECIFIED ###
### effect give @e[tag=HES,distance=..200] minecraft:instant_damage 1 10 false
### NEEDS MOVED EANDSS AND SPECIFIED ###
#
#
##########