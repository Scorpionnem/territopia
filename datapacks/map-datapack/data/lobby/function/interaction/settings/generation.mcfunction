execute if score generation button.state matches 1 run return run function lobby:interaction/settings/generation2

#: generation settings 1 = aquatic
scoreboard players set generation settings 1

execute at @s on target run playsound ui.button.click ambient @s ~ ~ ~

scoreboard players set generation button.state 1
data merge entity @n[type=text_display,tag=generation.setting] {text:'"Aquatic"'}

function board:generate with storage minecraft:generation