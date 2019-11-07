# Kun Boss effects and summons fail function
# Created by iTyro
# Reviewed October 9, 2018
#
#
# Filler function - used to handle things that need to be done when boss isnt present 
# (ie,killing minions to reduce lag )
#
tellraw @p[distance=...5] {"text":"[BBFunction] eandsf file currently removing @e[tag=merfolkr,tag=merfolkt,distance=..200"}
#
tp @e[tag=merfolkr,distance=..200] 1 -200 1
tp @e[tag=merfolkt,distance=..200] 1 -200 1
#
### NEEDS MOVED EANDSS AND SPECIFIED ###
### effect give @e[tag=kun,distance=..200] minecraft:instant_damage 1 10 false
### NEEDS MOVED EANDSS AND SPECIFIED ###
#
#
##########