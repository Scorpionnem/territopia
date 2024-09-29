#Running custom per-step commands.



#Check if an entity was detected.

execute if score #hit raycast matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=interaction,tag=!raycast,dx=0,sort=nearest,tag=tile] run function raycast:check_hit_entity
scoreboard players add #distance raycast 1

#Advance forward and run the ray again if no entity and/or block was found.

execute if score #hit raycast matches 0 if score #distance raycast matches ..640 positioned ^ ^ ^0.1 run function raycast:ray