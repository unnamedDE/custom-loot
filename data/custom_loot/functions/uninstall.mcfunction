#######
# Compiled from data/custom_loot/functions/management.mcscript
# to .//data/custom_loot/functions/uninstall.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute as @e[tag=cl_init] at @s run function custom_loot:deactivate
scoreboard objectives remove cl_temp
scoreboard objectives remove cl_health
scoreboard objectives remove cl_health_old
scoreboard objectives remove cl_req_health
scoreboard objectives remove cl_damage
scoreboard objectives remove cl_killed_wither
scoreboard objectives remove cl_killed_ed
scoreboard objectives remove cl_killed_ho
scoreboard objectives remove cl_killed_do
scoreboard objectives remove cl_killed_mu
scoreboard objectives remove cl_killed_sh
scoreboard objectives remove cl_killed_zh
