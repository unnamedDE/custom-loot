#######
# Compiled from data/custom_loot/functions/main.mcscript
# to .//data/custom_loot/functions/main.mcfunction
#
# Generated by Minecraft Script for 1.13
######
execute unless score custom_loot installed_packs matches 1 run scoreboard players set custom_loot installed_packs 1
execute as @e[type=!#unnamedde:non-living,type=!minecraft:player,type=!minecraft:ender_dragon,type=!minecraft:wither,type=!minecraft:horse,type=!minecraft:donkey,type=!minecraft:mule,type=!minecraft:skeleton_horse,type=!minecraft:zombie_horse,tag=!cl_init] at @s if score #on cl_health matches 1.. run function custom_loot:init_entity
execute as @e[type=minecraft:wolf,tag=!cl_dog,tag=cl_init,nbt=!{OwnerUUID:""}] at @s if score #on cl_health matches 1.. run function custom_loot:init_dog
execute as @e[type=!#unnamedde:non-living,type=!minecraft:player,type=!minecraft:ender_dragon,type=!minecraft:wither,tag=cl_init,tag=!cl_dog] at @s store result score @s cl_health run data get entity @s Health
execute as @e[type=!#unnamedde:non-living,type=!minecraft:player,type=!minecraft:ender_dragon,type=!minecraft:wither,tag=cl_init,tag=!cl_dog] at @s if score @s cl_health <= @s cl_req_health run function custom_loot:death
execute as @a[scores={cl_killed_wither=1..}] at @s run function #custom_loot:killer/wither
execute as @a[scores={cl_killed_wither=1..}] at @s run scoreboard players reset @s cl_killed_wither
execute as @a[scores={cl_killed_ed=1..}] at @s run function #custom_loot:killer/ender_dragon
execute as @a[scores={cl_killed_ed=1..}] at @s run scoreboard players reset @s cl_killed_ed
execute as @a[scores={cl_killed_ho=1..}] at @s run function #custom_loot:killer/horse
execute as @a[scores={cl_killed_ho=1..}] at @s run scoreboard players reset @s cl_killed_ho
execute as @a[scores={cl_killed_do=1..}] at @s run function #custom_loot:killer/donkey
execute as @a[scores={cl_killed_do=1..}] at @s run scoreboard players reset @s cl_killed_do
execute as @a[scores={cl_killed_mu=1..}] at @s run function #custom_loot:killer/mule
execute as @a[scores={cl_killed_mu=1..}] at @s run scoreboard players reset @s cl_killed_mu
execute as @a[scores={cl_killed_sh=1..}] at @s run function #custom_loot:killer/skeleton_horse
execute as @a[scores={cl_killed_sh=1..}] at @s run scoreboard players reset @s cl_killed_sh
execute as @a[scores={cl_killed_zh=1..}] at @s run function #custom_loot:killer/zombie_horse
execute as @a[scores={cl_killed_zh=1..}] at @s run scoreboard players reset @s cl_killed_zh
execute as @a[scores={cl_damage=1..}] run scoreboard players reset @s cl_damage
scoreboard players reset * cl_temp