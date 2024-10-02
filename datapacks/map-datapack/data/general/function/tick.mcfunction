
execute as @a if score @s carrot matches 1.. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={settings:1}] run function game:inventory/items/clicksettings

execute as @a if score @s carrot matches 1.. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={end_turn:1}] run function game:inventory/items/end_turn

execute as @a if score @s carrot matches 1.. if items entity @s weapon.mainhand carrot_on_a_stick[custom_data={cancel:1}] run function structures:build/givebuilder/getitemsback

execute if score state game matches 1 run function board:tick

execute if score state game matches 0 run function lobby:tick

execute if score state game matches 1 as @a[tag=!currentplayer] run tp @s -2000 1 2000 0 0

execute if score state game matches 1 run scoreboard players add value waiting 1
execute if score state game matches 1 if score value waiting matches 14 run scoreboard players set value waiting 2
execute if score state game matches 1 if score value waiting matches 2 run data merge entity @n[tag=waiting] {text:'"Waiting for next turn."'}
execute if score state game matches 1 if score value waiting matches 6 run data merge entity @n[tag=waiting] {text:'"Waiting for next turn.."'}
execute if score state game matches 1 if score value waiting matches 10 run data merge entity @n[tag=waiting] {text:'"Waiting for next turn..."'}


function structures:build/tick

execute if score state game matches 1 run effect give @a[tag=!currentplayer] invisibility 1 1 true
execute if score state game matches 1 run effect clear @a[tag=currentplayer] invisibility
effect give @a saturation infinite 10 true 
scoreboard players set @a carrot 0

execute as @a if items entity @s container.* chorus_fruit run tp @s 2000 1 2000 0 0
execute as @a if items entity @s container.* chorus_fruit run clear @s chorus_fruit

function game:updatebossbar