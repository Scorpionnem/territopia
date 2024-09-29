execute at @s on target run playsound ui.button.click ambient @s ~ ~ ~

data modify storage generation value set value 2

scoreboard players set generation button.state 0
data merge entity @n[type=text_display,tag=generation.setting] {text:'"Continental"'}

function board:generate with storage minecraft:generation