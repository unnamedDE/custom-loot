#######
# Compiled from data/custom_loot/functions/init_entity.mcscript
# to .//data/custom_loot/functions/init_entity.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute store result score @s cl_health_old run data get entity @s Health
execute store result score @s cl_health run data get entity @s Health
scoreboard players set @s cl_req_health 1024
scoreboard players operation @s cl_req_health -= @s cl_health
data merge entity @s {Health:1024.0f,Attributes:[{Name:generic.maxHealth,Base:1024}]}
execute store result score @s cl_health run data get entity @s Health
tag @s add cl_init
