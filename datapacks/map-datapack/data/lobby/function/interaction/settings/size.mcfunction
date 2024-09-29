scoreboard players add size button.state 1
execute if score size button.state matches 5.. run scoreboard players set size button.state 1

execute at @s on target run playsound ui.button.click ambient @s ~ ~ ~

execute if score size button.state matches 1 run data modify storage generation size set value "small"
execute if score size button.state matches 1 run data merge entity @n[tag=size.setting,type=text_display] {text:'"Small"'}

execute if score size button.state matches 2 run data modify storage generation size set value "normal"
execute if score size button.state matches 2 run data merge entity @n[tag=size.setting,type=text_display] {text:'"Normal"'}

execute if score size button.state matches 3 run data modify storage generation size set value "big"
execute if score size button.state matches 3 run data merge entity @n[tag=size.setting,type=text_display] {text:'"Big"'}

execute if score size button.state matches 4 run data modify storage generation size set value "massive"
execute if score size button.state matches 4 run data merge entity @n[tag=size.setting,type=text_display] {text:'"Massive"'}

function board:generate with storage generation