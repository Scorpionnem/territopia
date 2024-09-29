execute at @s on target run playsound ui.button.click ambient @s ~ ~ ~

#: generation settings 0 = continental
scoreboard players set generation settings 0

scoreboard players set generation button.state 0
data merge entity @n[type=text_display,tag=generation.setting] {text:'"Continental"'}

function board:generate with storage minecraft:generation