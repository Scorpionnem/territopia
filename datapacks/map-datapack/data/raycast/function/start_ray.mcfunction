#Setting up the raycasting data.

tag @s add raycast
scoreboard players set #hit raycast 0
scoreboard players set #distance raycast 0

#Activating the raycast. This function will call itself until it is done.

function raycast:ray

#Raycasting finished, removing tag from the raycaster.

tag @s remove raycast