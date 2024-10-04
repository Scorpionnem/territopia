execute as @e[tag=selected_tile] run function units:general/select/unselect


execute as @s on vehicle run tag @s remove unit
tag @s add detectvillage
execute as @e[tag=village] if score @s village.id = @n[tag=detectvillage] village.id run scoreboard players remove @s village.unitscount 1
tag @s remove detectvillage
execute as @s on passengers run kill @s[tag=playerhead]
kill @s