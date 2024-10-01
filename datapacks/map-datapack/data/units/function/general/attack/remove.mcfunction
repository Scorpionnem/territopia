$execute on passengers if entity @s[tag=unit,tag=!player$(currentplayer)] run return fail
execute at @s run kill @n[tag=select_red]
tag @s remove select_attack