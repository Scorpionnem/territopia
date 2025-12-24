execute unless entity @e[tag=!generation_random,tag=tile] run return run scoreboard players set generating board_generation 2

execute as @e[tag=tile,tag=!generation_random,limit=256] at @s run \
	function src:board/generation/terrain/setrandom
