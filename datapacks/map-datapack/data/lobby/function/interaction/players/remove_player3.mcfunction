tag @s remove this
execute on target run tag @s remove player3
execute on passengers run item replace entity @s container.0 with barrier
execute at @s as @n[type=text_display,tag=player3] run data merge entity @s {text:'"No Player"'}
execute at @s on target run playsound ui.button.click ambient @s ~ ~ ~
