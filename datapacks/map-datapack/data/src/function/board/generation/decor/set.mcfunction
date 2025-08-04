say Setting decors
execute unless entity @e[tag=!final_decorated,tag=tile] run scoreboard players set generating board_generation 0

execute as @e[tag=tile,tag=!final_decorated] at @s run \
	function src:board/generation/decor/setrandom

execute as @e[tag=tile,tag=!final_decorated] at @s run \
	function src:board/generation/decor/choose_tile
