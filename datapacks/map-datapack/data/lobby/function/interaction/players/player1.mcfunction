tag @s add this
execute on target if entity @s[tag=player1] as @n[tag=this] run return run function lobby:interaction/players/remove_player1
tag @s remove this

tag @a remove player1
execute on target run tag @s add player1

execute at @s on target run playsound ui.button.click ambient @s ~ ~ ~
execute on passengers run tag @s add this

execute on target run loot replace entity @n[tag=this] container.0 loot lobby:player_head
data modify entity @n[type=text_display,tag=player1] text set from entity @n[tag=this] item.components.minecraft:profile.name
tag @n[tag=this] remove this
