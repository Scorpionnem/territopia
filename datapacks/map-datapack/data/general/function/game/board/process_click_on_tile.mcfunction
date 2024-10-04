execute as @s[tag=tile,tag=!fog] if items entity @a[tag=currentplayer] weapon.mainhand carrot_on_a_stick[custom_data={builder:1}] run return run function structures:build/givebuilder/find


execute as @s[tag=village.cancapture] at @s run return run function game:village/capture with storage game

execute as @s[tag=unit,tag=!select_attack,tag=!village.cancapture] run return run function units:general/select/select with storage game
execute as @s[tag=select_moove] run return run function units:general/moove/moove_to_selected_tile
execute as @s[tag=select_attack] run return run function units:general/attack/attack


execute as @s[tag=tile,tag=!fog,tag=village] at @s if items entity @a[tag=currentplayer] weapon.mainhand paper[custom_data={warrior:1}] run return run function units:summon/warrior_try with storage game

execute as @s[tag=ocean,tag=!fish,tag=!port] if items entity @n[tag=currentplayer] weapon.mainhand paper[custom_data={port:1}] at @s run function structures:build/port/try_build with storage game

execute as @s[tag=mountains,tag=ore_vein,tag=!mine] if items entity @n[tag=currentplayer] weapon.mainhand paper[custom_data={mine:1}] at @s run function structures:build/mine/try_build with storage game
